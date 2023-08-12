@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Category List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Category</li>
                    <li class="breadcrumb-item active">Category List</li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="row project-cards">
              <div class="col-md-12 project-list">
                <div class="card">
                  <div class="row">
                    
                    <div class="col-md-9 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i data-feather="plus-square"> </i>{{trans("file.Add Category")}}</button>
                             
                    </div>
                    <div class="col-md-3 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" style="float:center;" href=""> <i data-feather="copy"> </i>{{trans('file.Import Category')}}</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header pb-0">
                  @if($errors->has('name'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('name') }}</div>
@endif
@if($errors->has('image'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('image') }}</div>
@endif

@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif
                  </div>
                  <div class="card-body">
                    <div class="dt-ext table-responsive theme-scrollbar">
                      <table class="display" id="category-table">
                        <thead>
                          <tr>
                         
                          <th>{{trans('file.Image')}}</th>
                          <th>{{trans('file.category')}}</th>
                          <th>{{trans('file.Parent Category')}}</th>
                          <th>{{trans('file.Number of Product')}}</th>
                          <th>{{trans('file.Stock Quantity')}}</th>
                          <th>{{trans('file.Stock Worth (Price/Cost)')}}</th>
                          <th class="not-exported">{{trans('file.action')}}</th>
                          </tr>
                        </thead>
                        <tbody>
                          <!-- @foreach($lims_category_all as $cat)
                          <tr>
                            <td> 
                              <img class="img-fluid table-avtar" src="http://kheltoh.tech/public/images/category/20230412020534.jpg" alt="">
                            </td>
                            <td>{{$cat->name}}</td>
                            <td>N/A</td> 
                            <td>0</td>
                            <td>0</td>
                            <td>₹ 0 / ₹ 0</td>
                            <td> 
                              <ul class="action"> 
                                <li class="edit"> <a href="#"><i data-feather="edit"></i></a></li>
                                <li class="delete"><a href="#" class="text-danger"><i data-feather="trash-2"></i></a></li>
                              </ul>
                            </td>
                          </tr>
                          @endforeach() -->
                        </tbody>
                       
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          
          <!-- Container-fluid Ends-->

          <!-- Start Add Category Model -->
          <div class="modal fade modal-bookmark" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p><i>The field labels marked with * are required input fields.</i></p>
                  <form class="form-bookmark needs-validation" method="post" enctype="multipart/form-data" action="{{route('category.store')}}" id="bookmark-form" novalidate="">
                  @csrf
                  <div class="row g-2">
                      <div class="mb-3 col-md-6 mt-0">
                        <label for="con-name">Name <span class="text-danger">*</span></label>
                          <input class="form-control" name="name" type="text" required="" placeholder="First Name" autocomplete="off">
                      </div>
                      <div class="mb-3 col-md-6 mt-0">
                        <label for="con-name">Image </label>
                        <input type="file" name="image" class="form-control">
                      </div>
                    
                      <div class="mb-3 col-md-6 my-0">
                        <label for="con-phone">Parent Category</label>
                            <select class="form-control" name="parent_id">
                              <option value="" disable>No parent Category</option>
                              @foreach($lims_categories as $lc)
                              <option value="{{$lc->id}}">{{$lc->name}}</option>
                              @endforeach
                            </select>
                      </div>
                    </div>
                   <div style="text-align:end;">
                      <button class="btn btn-secondary" type="submit">Submit</button>
                   </div>
                   
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!--End Add category Model -->
        </div>
@stop
@section('js_section')
<script>
   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('#category-table').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax":{
            url:"category/category-data",
            dataType: "json",
            type:"post"
        },
        "createdRow": function( row, data, dataIndex ) {
            $(row).attr('data-id', data['id']);
        },
        "columns": [
        
            {"data": "image"},
            {"data": "name"},
            {"data": "parent_id"},
            {"data": "number_of_product"},
            {"data": "stock_qty"},
            {"data": "stock_worth"},
            {"data": "options"},
        ]
    } );
</script>
@if(session()->has('message'))
<script>
   $.notify({
      message:'{{ session()->get('message') }}'
   },
   {
      type:'success',
      allow_dismiss:false,
      newest_on_top:false ,
      mouse_over:false,
      showProgressbar:false,
      spacing:10,
      timer:2000,
      placement:{
        from:'bottom',
        align:'right'
      },
      offset:{
        x:30,
        y:30
      },
      delay:1000 ,
      z_index:10000,
      animate:{
        enter:'animated bounce',
        exit:'animated bounce'
    }
  });
 </script>
  
@endif

@stop