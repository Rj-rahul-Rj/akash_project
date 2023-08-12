<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Indent;
use App\Product;
use App\ReconciliationBill;
use App\Inward;
use DB;
use Auth;

class ReconciliationController extends Controller
{
    
    public function index()
    {
        $indent_list = Indent::latest()->get();

        $ret=array();

        foreach($indent_list as $id){
           $product = Product::where('id',$id->pname)->first();

           $id->product=$product;
           $ret[] =$id;
        }

        $product_list = Product::where('is_active', true)->get();
        $reconciliation_bill_list = ReconciliationBill::where('is_active', true)->where('user_id',Auth::user()->id)->get();

        $ret_rbl=array();

        foreach($reconciliation_bill_list as $rbl){
           $product_rbl = Product::where('id',$rbl->product_id)->first();

           $rbl->product_rbl=$product_rbl;
           $ret_rbl[] =$rbl;
        }

       

        return view('reconciliation.index',compact('indent_list','ret','product_list','reconciliation_bill_list','ret_rbl'));
    }

  
    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
       $rb = new ReconciliationBill();

       $rb->product_id = $request->product_id;
       $rb->price = $request->price;
       $rb->qty = $request->qty;
       $rb->user_id = Auth::user()->id;
       $rb->role_id = Auth::user()->role_id;
       $rb->is_active = true;

       $rb->save();
        return redirect()->back()->with('message', 'Bill Add successfully');

    }

   
    public function reconciliationShow(Request $request)
    {
        $product_id_ = $request->key;

        $data['reconciliation_bill_list'] = ReconciliationBill::select('product_id','qty','price')->where('is_active', true)->where('product_id',$product_id_)->first();
        $data['indent_list'] = Indent::select('pname','qty','l_price')->where('pname',$product_id_)->first();
        $data['inward_list'] = Inward::select('product_id','qty')->where('is_active', true)->where('product_id',$product_id_)->first();
        $data['product_name'] = Product::select('name','id')->where('is_active', true)->where('id',$product_id_)->first();

        return $data;
       
    }

    public function reconciliationAccept(Request $request)
    {
        $product_id_ = $request->product_id;
        $decline_msg_recon = ReconciliationBill::where('product_id',$product_id_)->first();
        if($decline_msg_recon){
        $decline_msg_recon->approve = 'accept';
        $decline_msg_recon->update();

        return response()->json(["success"=>true,"message"=>"Request Accepted succesfully"]);
    }else{


        return response()->json(["success"=>false,"message"=>"Product not found"]);

    }
    }

  
    public function reconciliationReject(Request $request)
    {
        $product_id_ = $request->product_id;
        $decline_msg_recon = ReconciliationBill::where('product_id',$product_id_)->first();

        if($decline_msg_recon){

        $decline_msg_recon->approve = 'decline';
        $decline_msg_recon->d_msg = $request->msg;
        $decline_msg_recon->update();
        return response()->json(["success"=>true,"message"=>"Request Declined succesfully"]);
        }else{


            return response()->json(["success"=>false,"message"=>"Product not found"]);

        }

        


    }

   

    public function destroy($id)
    {
        //
    }
}
