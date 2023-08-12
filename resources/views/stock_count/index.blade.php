@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Stock Count List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Stock Count</li>
                    <li class="breadcrumb-item active">Stock Count List</li>
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
                      <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i data-feather="plus-square"> </i>Count Stock</button>
                             
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
                      <table class="display" id="stock-count-table">
                        <thead>
                        <tr>
                    <th class="not-exported"></th>
                    <th>{{trans('file.Date')}}</th>
                    <th>{{trans('file.reference')}}</th>
                    <th>{{trans('file.Warehouse')}}</th>
                    <th>{{trans('file.category')}}</th>
                    <th>{{trans('file.Brand')}}</th>
                    <th>{{trans('file.Type')}}</th>
                    <th class="not-exported">{{trans('file.Initial File')}}</th>
                    <th class="not-exported">{{trans('file.Final File')}}</th>
                    <th class="not-exported">{{trans('file.action')}}</th>
                </tr>
                        </thead>
                        <tbody>
                            @foreach($lims_stock_count_all as $key => $stock_count)
                                <?php
                                    $warehouse = DB::table('warehouses')->find($stock_count->warehouse_id);
                                    $category_name = [];
                                    $brand_name = [];
                                    $initial_file = 'public/stock_count/' . $stock_count->initial_file;
                                    $final_file = 'public/stock_count/' . $stock_count->final_file;
                                ?>
                                <tr>
                                    <td>{{$key}}</td>
                                    <td>{{ date($general_setting->date_format, strtotime($stock_count->created_at->toDateString())) . ' '. $stock_count->created_at->toTimeString() }}</td>
                                    <td>{{ $stock_count->reference_no }}</td>
                                    <td>{{ $warehouse->name }}</td>
                                    <td>
                                        @if($stock_count->category_id)
                                            @foreach(explode(",",$stock_count->category_id) as $cat_key=>$category_id)
                                            @php
                                                $category = \DB::table('categories')->find($category_id);
                                                $category_name[] = $category->name;
                                            @endphp
                                                @if($cat_key)
                                                    {{', ' . $category->name}}
                                                @else
                                                    {{$category->name}}
                                                @endif
                                            @endforeach
                                        @endif
                                    </td>
                                    <td>
                                        @if($stock_count->brand_id)
                                            @foreach(explode(",",$stock_count->brand_id) as $brand_key=>$brand_id)
                                            @php
                                                $brand = \DB::table('brands')->find($brand_id);
                                                $brand_name[] = $brand->title;
                                            @endphp
                                                @if($brand_key)
                                                    {{', '.$brand->title}}
                                                @else
                                                    {{$brand->title}}
                                                @endif
                                            @endforeach
                                        @endif
                                    </td>
                                    @if($stock_count->type == 'full')
                                        @php $type = trans('file.Full') @endphp
                                        <td><div class="badge badge-primary">{{trans('file.Full')}}</div></td>
                                    @else
                                        @php $type = trans('file.Partial') @endphp
                                        <td><div class="badge badge-info">{{trans('file.Partial')}}</div></td>
                                    @endif
                                    <td class="text-center">
                                        <a download href="{{'public/stock_count/'.$stock_count->initial_file}}" title="{{trans('file.Download')}}"><i class="dripicons-copy"></i></a>
                                    </td>
                                    <td class="text-center">
                                        @if($stock_count->final_file)
                                        <a download href="{{'public/stock_count/'.$stock_count->final_file}}" title="{{trans('file.Download')}}"><i class="dripicons-copy"></i></a>
                                        @endif
                                    </td>
                                    <td>
                                        @if($stock_count->final_file)
                                            <div class="badge badge-success final-report" data-stock_count='["{{date($general_setting->date_format, strtotime($stock_count->created_at->toDateString()))}}", "{{$stock_count->reference_no}}", "{{$warehouse->name}}", "{{$type}}", "{{implode(", ", $category_name)}}", "{{implode(", ", $brand_name)}}", "{{$initial_file}}", "{{$final_file}}", "{{$stock_count->id}}"]'>{{trans('file.Final Report')}}
                                            </div>
                                        @else
                                            <div style="cursor: pointer;" class="badge badge-primary finalize" data-id="{{$stock_count->id}}">{{trans('file.Finalize')}}
                                            </div>
                                        @endif
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

    $('#stock-count-table').DataTable( {
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
                'targets': [0, 7, 8, 9]
            },
            {
                'render': function(data, type, row, meta){
                    if(type === 'display'){
                        data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                    }

                   return data;
                },
                'checkboxes': {
                   'selectRow': true,
                   'selectAllRender': '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>'
                },
                'targets': [0]
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