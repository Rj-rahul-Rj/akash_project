@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Adjustment List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Adjustment</li>
                    <li class="breadcrumb-item active">Adjustment List</li>
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
                    
                    <div class="col-md-12 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" href="{{route('qty_adjustment.create')}}" > <i data-feather="plus-square"> </i>Add Adjustment</a>
                             
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
                      <table class="display" id="adjustment-table">
                        <thead>
                          <tr>
                         
                          <th class="not-exported"></th>
                            <th>{{trans('file.Date')}}</th>
                            <th>{{trans('file.reference')}}</th>
                            <th>{{trans('file.Warehouse')}}</th>
                            <th>{{trans('file.product')}}s</th>
                            <th>{{trans('file.Note')}}</th>
                            <th class="not-exported">{{trans('file.action')}}</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach($lims_adjustment_all as $key=>$adjustment)
                                <tr data-id="{{$adjustment->id}}">
                                    <td>{{$key}}</td>
                                    <td>{{ date('d-m-Y', strtotime($adjustment->created_at->toDateString())) . ' '. $adjustment->created_at->toTimeString() }}</td>
                                    <td>{{ $adjustment->reference_no }}</td>
                                    <?php $warehouse = DB::table('warehouses')->find($adjustment->warehouse_id) ?>
                                    <td>{{ $warehouse->name }}</td>
                                    <td>
                                    <?php
                                    	$product_adjustment_data = DB::table('product_adjustments')->where('adjustment_id', $adjustment->id)->get();
                                    	foreach ($product_adjustment_data as $key => $product_adjustment) {
                                            if($product_adjustment->variant_id) {
                                                $product = DB::table('products')
                                                        ->join('product_variants', 'products.id', '=', 'product_variants.product_id')
                                                        ->select('products.name','product_variants.item_code as code')
                                                        ->where([
                                                            ['product_id', $product_adjustment->product_id],
                                                            ['variant_id', $product_adjustment->variant_id]
                                                        ])->first();
                                            }
                                            else {
                                                $product = DB::table('products')->select('name','code')->find($product_adjustment->product_id);
                                            }
                
                                    	 	if($key)
                                    	 		echo '<br>';
                                    	 	echo $product->name.' ['.$product->code.']';
                                    	 }
                                    ?>
                                    </td>
                                    <td>{{$adjustment->note}}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans('file.action')}}<span class="caret"></span><span class="sr-only">Toggle Dropdown</span>
                                            </button>
                                            <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">
                                                <li>
                                                    <a href="{{ route('qty_adjustment.edit', $adjustment->id) }}" class="btn btn-link"><i class="dripicons-document-edit"></i> {{trans('file.edit')}}</a>
                                                </li>
                                                <li class="divider"></li>
                                                {{ Form::open(['route' => ['qty_adjustment.destroy', $adjustment->id], 'method' => 'DELETE'] ) }}
                                                <li>
                                                    <button type="submit" class="btn btn-link" onclick="return confirmDelete()"><i class="dripicons-trash"></i> {{trans('file.delete')}}</button>
                                                </li>
                                                {{ Form::close() }}
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                       
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          
          <!-- Container-fluid Ends-->

         
        </div>
@stop
@section('js_section')
<script>
   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    var table = $('#adjustment-table').DataTable( {
        "order": [],
        'language': {
            'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
             "info":      '<small>{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)</small>',
            "search":  '{{trans("file.Search")}}',
            'paginate': {
                    'previous': '<i class="dripicons-chevron-left"></i>',
                    'next': '<i class="dripicons-chevron-right"></i>'
            }
        },
        'columnDefs': [
            {
                "orderable": false,
                'targets': [0, 6]
            },
            {
                'checkboxes': {
                   'selectRow': true
                },
                'targets': 0
            }
        ],
        'select': { style: 'multi',  selector: 'td:first-child'},
        'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
        dom: '<"row"lfB>rtip',
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