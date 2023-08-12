<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RepairMaintenance;
use App\Product;
use DB;
use Auth;

class RepairmaintenanceController extends Controller
{
    public function index()
    {
        $repair_list = RepairMaintenance::where('is_active',true)->get();

        $product_list = Product::where('is_active',true)->get();

        $ret=array();

        foreach($repair_list as $id){
           $product = Product::where('id',$id->product_id)->first();

           $id->product=$product;
           $ret[] =$id;
        }
        
       return view('repairmaintenance.list',compact('repair_list','product_list','ret'));
    }

    public function create(Request $request)
    {
        $rb = new RepairMaintenance();

        $rb->product_id = $request->product_id;
        $rb->bill_no = $request->bill_no;
        $rb->qty = $request->qty;
        $rb->user_id = Auth::user()->id;
        $rb->role_id = Auth::user()->role_id;
        $rb->is_active = true;
 
        $rb->save();
         return redirect()->back()->with('message', 'Repair & Maintenance Add successfully');
    }

    public function edit($id)
    {
        $repair_list = RepairMaintenance::where('id',$id)->first();
        $product_list = Product::where('is_active',true)->get();

        dd( $repair_list, $product_list);

        return view('repairmaintenance.edit',compact('repair_list','product_list'));
    }
    
    public function delete($id)
    {
        $lims_repair = RepairMaintenance::find($id);
        $lims_repair->is_active = false;
        $lims_repair->save();
        return redirect()->back()->with('message', 'Repair & Maintenance deleted successfully');
    }
}
