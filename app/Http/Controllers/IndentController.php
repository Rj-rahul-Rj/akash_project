<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Indent;
use App\Product;
use App\Category;
use App\Warehouse;
use App\Inward;
use DB;
use Auth;

class IndentController extends Controller
{
    public function list()
    {
         $indent = Indent::latest()->get();

        $ret=array();

        foreach($indent as $id){
           $product = Product::where('id',$id->pname)->first();
           $category = Category::where('id',$product->category_id)->first();

           $id->product=$product;
           $id->category=$category;
           $ret[] =$id;
        }


        return view('indent.index',compact('indent','ret'));
    }
    

    public function add()
    {
      
         $product = Product::orderBy('id','desc')->where('is_active','1')->get();

        return view('indent.create',compact('product'));
    }
    
    public function productPrice(Request $request)
    {
       
        $product = Product::where('id',$request->key)->first();
        return $product;
    }
   
    public function lastindentDetails(Request $request)
    {
       
        $indent = Indent::where('pname',$request->key)->first();
       
        return $indent;
    }

    public function CreatAdd(Request $request)
    {
        

        // dd($request->all());

        for($i=0;$i<count($request->pname);$i++){


            $product = Product::where('id',$request->pname[$i])->first();
            $to_check_indent = Indent::where('pname',$request->pname[$i])->first();
            if(!$to_check_indent){

                 $indent_list = New Indent();
                 $indent_list->user_id = Auth::user()->id;
                 $indent_list->role_id = Auth::user()->role_id;
                 $indent_list->pname = $request->pname[$i];
                 $indent_list->qty = $request->qty[$i];
                 $indent_list->serial_no =$product->code[$i];
                 $indent_list->exp_date = $request->exp_date[$i];
                 $indent_list->date = $request->date[$i];
                 $indent_list->l_qty_order = $request->qty[$i];
            // $indent_list->l_income_date = $request->date;
            $indent_list->l_price = $product->price[$i];

            $indent_list->save();

            }else{
                $to_check_indent->l_qty_order = $request->qty[$i];
                $to_check_indent->exp_date = $request->exp_date[$i];

                $to_check_indent->update();


            }

        }



        return back()->with('message', 'Indent Add successfully');
        
        
    }
    
    public function edit($id)
    {
      
        $indent = Indent::find($id);
        $product = Product::orderBy('id','desc')->where('is_active','1')->get();

        return view('indent.edit',compact('product','indent'));
    }
    
    public function update(Request $request,$id)
    {
       
         $this->validate($request, [
            'pname' => 'required',
            'qty' => 'required',
            'exp_date' => 'required',
        ], [
            'pname.required' => 'Kindly Select Product Name',
            'qty.required' => 'Kindly Enter Quantity ',
            'exp_date.required' => 'Kindly Enter Expected Date',

        ]);

        $product = Product::where('id',$request->pname)->first();
        $i = Indent::find($id);

        $i->pname = $request->pname;
        $i->l_qty_order = $request->qty;
        $i->serial_no = $product->code;
        $i->exp_date = $request->exp_date;
        $i->date = $request->date;

        $i->update();
        return back()->with('message', 'Indent Update successfully');
        
        
    }
    
    public function delete($id)
    {
        Indent::find($id)->delete();
         return back()
        ->with('message','File has been Deleted.');

    }
    
     public function track()
    {
     
        $indent = Indent::latest()->get();

        $ret=array();

        foreach($indent as $id){
           $product = Product::where('id',$id->pname)->first();

           $id->product=$product;
           $ret[] =$id;
        }

       return view('indent.track',compact('indent','ret'));
    }

    public function inward()
    {
        $product = Product::where('is_active', true)->get();
        $warehouse = Warehouse::where('is_active', true)->get();

        $inward = Inward::latest()->get();

         $ret=array();

         foreach($inward as $iw){
            $pro = Product::where('id',$iw->product_id)->first();
            $whouse = Warehouse::where('id',$iw->warehouse_id)->first();

            $iw->product=$pro;
            $iw->whouse=$whouse;
            $ret[] =$iw;
         }
         
        return view('indent.inward',compact('product','warehouse','ret','inward'));
    }

    public function inwardCreate(Request $request){

        $iwd = new Inward();

        $iwd->product_id = $request->product_id;
        $iwd->warehouse_id = $request->warehouse_id;
        $iwd->truck_no = $request->truck_no;
        $iwd->qty = $request->qty;
        $iwd->is_active = true;
        $iwd->user_id = Auth::user()->id;
        $iwd->role_id = Auth::user()->role_id;

        $iwd->save();
        return redirect()->back()->with('message', 'Inward Add successfully');

    }

    public function productquantityAlertindent($id)
    {
       
            $apd = Product::select('name','code', 'image', 'qty', 'alert_quantity',"id")->where('is_active', true)->where('id',$id)->first();
           
            return view('indent.qty_alert_indent', compact('apd'));
      
    }
}
