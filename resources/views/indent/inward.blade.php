@extends('layout.main') @section('content')

@if($errors->has('name'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('name') }}</div>
@endif
@if(session()->has('message'))
  <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('message') }}</div>
@endif
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section>
    <div class="container-fluid">
    <button class="btn btn-info" data-toggle="modal" data-target="#createModal"><i class="dripicons-plus"></i>Add Inward</button>
    </div>

    <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-12">
                <div class="table-responsive">
                    <table id="department-table" class="table">
                        <thead>
                            <tr>
                                <th class="not-exported"></th>
                                <th>Sl.No</th>
                                <th>Truck No.</th>
                                <th>Product name</th>
                                <th>Warehouse</th>
                                <th>Qty</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                     @php
                     $id=1;
                        @endphp
                        @foreach($inward as $iw)
                            <tr data-id="$iw->id">
                                <td></td>
                                <td>{{$id++}}</td>
                                <td>{{$iw->truck_no}}</td>
                                <td>{{$iw->product->name}}</td>
                                <td>{{$iw->whouse->name}}</td>
                                <td>{{$iw->qty}}</td>
                                <td>{{$iw->created_at}}</td>
                                <td></td>
                            </tr>
                          @endforeach 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
</section>

<div id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
      <div class="modal-content">
        <form action="" method="post">
            @csrf
        <div class="modal-header">
          <h5 id="exampleModalLabel" class="modal-title">Add Inward</h5>
          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
        </div>
        <div class="modal-body">
          <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Product *</label>
                    <select required name="product_id" id="product_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Product...">
                    @foreach($product as $p)
                        <option value="{{$p->id}}">{{$p->name}}</option>
                      @endforeach
                    </select>
                </div>
               
                <div class="col-md-6 form-group">
                    <label>Warehouse *</label>
                    <select required name="warehouse_id" id="warehouse_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select warehouse...">
                       @foreach($warehouse as $w)
                        <option value="{{$w->id}}">{{$w->name}}</option>
                      @endforeach
                    </select>
                </div>
                <div class="col-md-6 form-group">
                    <label>Truck Number *</label>
                    <input type="text" name="truck_no" class="form-control" placeholder="Enter Truck Number">
                </div>
                <div class="col-md-6 form-group">
                    <label>Quantity *</label>
                    <input type="text" name="qty" class="form-control" placeholder="Enter Quantity">
                </div>
                
            </div>
            <div class="form-group text-right">
              <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary">
            </div>
        </div>
        </form>
      </div>
    </div>
</div>

@endsection

@push('scripts')
<script type="text/javascript">
    $("ul#hrm").siblings('a').attr('aria-expanded','true');
    $("ul#hrm").addClass("show");
    $("ul#hrm #dept-menu").addClass("active");

    var department_id = [];
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    function confirmDelete() {
      if (confirm("Are you sure want to delete?")) {
          return true;
      }
      return false;
    }


    $('#department-table').DataTable( {
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
                'targets': [0, 2]
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
        buttons: [
            {
                extend: 'pdf',
                text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                footer:true
            },
            {
                extend: 'csv',
                text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                footer:true
            },
            {
                extend: 'print',
                text: '<i title="print" class="fa fa-print"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                footer:true
            },
           
        ],
    } );
</script>
@endpush
