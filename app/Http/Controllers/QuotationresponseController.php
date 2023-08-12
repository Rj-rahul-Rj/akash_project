<?php



namespace App\Http\Controllers;



use Illuminate\Http\Request;

use App\QuotationEmail;

use App\QuotationItem;

use App\QuotationResponse;

use App\Product;

use App\Supplier;

use App\Unit;

use Illuminate\Validation\Rule;

use App\Mail\TestEmail;

use Mail;

use App\QuotationResponseItem;

use DB;

use App\counteroffer;

use Auth;

use Session;

use App\Mail\SupplierQuatEmail;


class QuotationresponseController extends Controller

{
 

    public function index($slug)

    {
     
      $quotation_ref_data = QuotationEmail::where('ref_no',$slug)->first();
      
      $supplier_data = Supplier::find($quotation_ref_data->supplier_id);
     

      $quotation_product_id = QuotationItem::with(['product'])->where('quotation_id',$quotation_ref_data->quotation_id)->get();

      $unit_list = Unit::where('is_active','1')->get();



      return view('quotation-supplier.index',compact('quotation_product_id','quotation_ref_data','supplier_data','unit_list'));

    }



    public function supplierReponse(Request $request,$slug)

    {

        //  dd($request->all());

        $index = 0;

      foreach ($request->price as $k=>$v) {

       $brands=[];

        for($i=0;$i<count($v);$i++){

            if($v[$i]!=null && $request->brand[$k][$i]!=null){

            $brands[] = array("brand"=>$request->brand[$k][$i],"price"=>$v[$i]);

        }

       }

        $quotation_response = new QuotationResponse();

        $quotation_response->ref_no = $slug;

        $quotation_response->quotation_id = $request->quotation_id;

        $quotation_response->product_id = $k;

        // $quotation_response->price = $v;

        $quotation_response->brand = json_encode($brands);

        $quotation_response->delivery_time = $request->delivery_time;

        $quotation_response->delivery_packaging = $request->delivery_packaging;

        $quotation_response->delivery_charges = $request->delivery_charges;

        $quotation_response->unit_id = $request->unit[$k];

        $index++;

        //dd($quotation_response);

        $quotation_response->save();

        for($i=0;$i<count($brands);$i++){

        $qri = new QuotationResponseItem();

        $qri->quotation_response_id = $quotation_response->id;

        $qri->product_id = $k;

        $qri->brand = $brands[$i]["brand"];

        $qri->price = $brands[$i]["price"];



        $qri->save();





        }



        $quotation_ref_data = QuotationEmail::where('ref_no', $quotation_response->ref_no)->first();

      $quotation_ref_data->status = '1';

      $quotation_ref_data->update();

      }









      return redirect()->back()->with('message', 'Submitted Successfully');



    }


    public function getProductItem(Request $request)
    {
      // print_r($request->all());die;
        $arr =[];
        $arr1 =[];
        $checkarr = [];
        $name = '';
        foreach($request->val as $data){
        // print_r($data);
          // $query = DB::table('quotation_response_items')
              // // ->select('products.name','quotation_response_items.id','quotation_response_items.brand as brand' ,'quotation_response_items.price as price')
              // ->join('products','quotation_response_items.product_id','=','products.id')
              // ->where('quotation_response_items.product_id','=',$data)
              // ->get();

              $query = QuotationResponse::where('product_id', $data)->get();
              // array_push($arr,$query);
              $productname = DB::table('products')
              ->select('name')
              ->where('id','=',$data)
              ->first();
              
              foreach($query as $res){
                  // $name = $productname->name;
                  $dat1['id']=$res->id;
                  $dat1['name']=$productname->name;
                  $dat1['option']=json_decode($res->brand);
                  // $dat['option'] = $dat1;
                  // $arr1 []  = $dat2;
                  // $datas = array_merge($arr, $arr1);
                  // $arr [] =$dat;
                //  $checkarr['name'] = $name;
                //  $checkarr['option'] = $dat1;
                 $arr []  = $dat1;
                }
          }
         
           
            echo json_encode($arr);
      
        
        // foreach($data as $data1){
        // $dat['name']=$data1->name;
        // foreach($data as $data2){
        //   $dat1['brand']=$data2->brand;
        //   $dat1['id']=$data2->id;
        //   $dat1['price']=$data2->price;
        //   $dat2['option'] = $dat1;
        //   $arr[]=$dat2;
        // }
        // array_push($arr,$dat);
        
        // $arr[]=$dat;
        // $dt = array_merge($arr,$arr1);
      // }
     
      
    }

    public function counteroffer(Request $request){
      $supplier_id = Session::get('supplier');
      $quotation_ref_data = QuotationEmail::where('ref_no',$supplier_id)->first();
      $supplier_data = Supplier::find($quotation_ref_data->supplier_id);
      $userId = Auth::user()->id;
      foreach($request->categories1 as $key => $value){
        $productId = QuotationResponseItem::select('product_id')->where('quotation_response_id', $key)->groupby('product_id')->first();
        foreach($value as $k => $data){
          $product = QuotationResponseItem::select('price')->where('quotation_response_id', $key)->where('brand', $k)->first();
          $insert = new counteroffer;
          $counteroffer = implode('"',$data);
          $insert['product_id'] =$productId->product_id;
          $insert['sender_id']=$userId;
          $insert['receiver_id']=$supplier_data->id;
          $insert['parent_id']=0;
          $insert['brand']=$k;
          $insert['actual_price']=$product->price;
          $insert['counter_offer_by_admin']=$counteroffer;
          $insert['counter_offer_by_seller']=0;
          $insert['status']=1;
          if($counteroffer !=0){
          $res = $insert->save();
         
          try{
            $mail_data['email'] = 'rahuljoshi13jan90@gmail.com';
            // $mail_data['email'] = $supplier_data->email;
  
            $mail_data['reference_no'] = $supplier_id;
  
            $mail_data['brand'] = $k;
  
            $mail_data['total_price'] = $product->price;
  
            $mail_data['counter_offer_by_admin'] = $counteroffer;
            // $share_link = 'http://kheltoh.tech/supplier-view-quotation-list/'.$supplier_id;
            $share_link = 'http://localhost:8000/quotations/quotationList/'.$supplier_id;
              
            $data = ['message' => 'Counter Offer by admin to your product !','email_id' => $mail_data['email'],'share_id' => $share_link,'ref_no' =>$supplier_id ];
            
            $check = Mail::to($mail_data['email'])->send(new SupplierQuatEmail($data));
            
            // $message = 'Mail send';
            return redirect()->back()->with('message', 'Submitted Successfully');

        }

        catch(\Exception $e){

            $message = 'Please setup your <a href="setting/mail_setting">mail setting</a> to send mail.';

        }
      }
        }
      }
      return $message;
    }

    
}

