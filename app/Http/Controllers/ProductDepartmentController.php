<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductDepartment;
use Illuminate\Validation\Rule;

class ProductDepartmentController extends Controller
{
    public function index()
    {
        $lims_product_department_all = ProductDepartment::where('is_active', true)->get();
        return view('product_department.list', compact('lims_product_department_all'));

    }

   
    public function create()
    {
        //
    }

   
    public function store(Request $request)
    {


        $pd = new ProductDepartment();

        $pd->name = $request->name;
        $pd->is_active = true;
        $pd->save();
        return redirect('productdepartments')->with('message', 'Product Department created successfully');
    }

   
    public function show($id)
    {
        //
    }

   
    public function edit($id)
    {
        //
    }

   
    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy($id)
    {
        $lims_product_department_data = ProductDepartment::find($id);
        $lims_product_department_data->is_active = false;
        $lims_product_department_data->save();
        return redirect('productdepartments')->with('message', 'Product Department deleted successfully');
    }
}
