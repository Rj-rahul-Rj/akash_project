@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Product List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Product</li>
                    <li class="breadcrumb-item active">Product List</li>
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
                  @if(in_array("products-add", $all_permission))
                    <div class="col-md-9 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" href="{{route('products.create')}}" > <i data-feather="plus-square"> </i>Add Product</a>
                             
                    </div>
                    <div class="col-md-3 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" style="float:center;" href="" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i data-feather="copy"> </i>{{trans('file.Import Category')}}</a>
                    </div>
                    @endif
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
                      <table class="display" id="product-data-table">
                        <thead>
                          <tr>
                          
                            <th>{{trans('file.Image')}}</th>
                            <th>{{trans('file.name')}}</th>
                            <th>{{trans('file.Code')}}</th>
                            <th>{{trans('file.Brand')}}</th>
                            <th>{{trans('file.category')}}</th>
                            <th>{{trans('file.Quantity')}}</th>
                            <th>{{trans('file.Unit')}}</th>
                            <th>{{trans('file.Price')}}</th>
                            <th>{{trans('file.Cost')}}</th>
                            <th>{{trans('file.Stock Worth (Price/Cost)')}}</th>
                            <th class="not-exported">{{trans('file.action')}}</th>
                          </tr>
                        </thead>
                        <tbody>
                        
                        </tbody>
                       
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          
          <!-- Container-fluid Ends-->

          <!-- Start Import  Model -->
         
          <!--End Import Model -->
        </div>
@stop
@section('js_section')
<script>

var warehouse = [];
    var variant = [];
    var qty = [];
    var htmltext;
    var slidertext;
    var product_id = [];
    var all_permission = <?php echo json_encode($all_permission) ?>;
    var role_id = <?php echo json_encode($role_id) ?>;
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;

   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

	$(document).ready(function() {
        	$('#product-data-table').DataTable( {
	            responsive: true,
	            fixedHeader: {
	                header: true,
	                footer: true
	            },
	            "processing": true,
	            "serverSide": true,
	            "ajax":{
	                url:"products/product-data",
	                data:{
	                    all_permission: all_permission
	                },
	                dataType: "json",
	                type:"post"
	            },
	            "createdRow": function( row, data, dataIndex ) {
	                $(row).addClass('product-link');
	                $(row).attr('data-product', data['product']);
	                $(row).attr('data-imagedata', data['imagedata']);
	            },
	           "columns": [
	                {"data": "image",},
	                {"data": "name"},
	                {"data": "code"},
	                {"data": "brand"},
	                {"data": "category"},
	                {"data": "qty"},
	                {"data": "unit"},
	                {"data": "price"},
	                {"data": "cost"},
	                {"data": "stock_worth"},
	                {"data": "options"},
	            ],
                order:[['1', 'asc']],
                'columnDefs': [
                    {
                        "orderable": false,
                        'targets': [0, -1]
                    }
                ],
		} );
    	} );
</script>
@if(session()->has('message'))

  
@endif

@stop