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
    <button class="btn btn-info" data-toggle="modal" data-target="#createModal"><i class="dripicons-plus"></i>Add Bills</button>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table id="reconciliation-table" class="table">
                        <thead>
                            <tr>
                                <th class="not-exported"></th>
                                <th>Sl.No</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Qty</th>
                                <th>Date</th>
                                <th>Verify</th>
                                <th>Status</th>
                            
                            </tr>
                        </thead>
                        <tbody>
                        @php
                            $id = 1;
                            @endphp
                            @foreach($reconciliation_bill_list as $key=>$rbl)
                        
                            <tr data-id="{{$rbl->id}}">
                                <td>{{$key}}</td>
                                <td>{{$id++}}</td>
                                <td>{{$rbl->product_rbl->name}}</td>
                                <td>{{$rbl->price}}</td>
                                <td>{{$rbl->qty}}</td>
                                <td>{{$rbl->created_at}}</td>
                                <td>
                                    <div class="badge badge-info _tocheck_model" data-value="{{$rbl->product_id}}"  style="cursor: pointer;" data-toggle="modal" data-target="#tocheckModal">To Check</div>
                                </td>
                                <td>
                                    @if($rbl->approve == 'accept')
                                        <div class="badge badge-success">Accept</div>
                                    @elseif($rbl->approve == 'decline')
                                        <div class="badge badge-danger">Decline</div>
                                    @else
                                        <div class="badge badge-secondary">Not Aviable</div>
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
    
</section>

<!-- Add bill Model -->
<div id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
      <div class="modal-content">
        {!! Form::open(['route' => 'reconciliation.store', 'method' => 'post', 'files' => true]) !!}
        <div class="modal-header">
          <h5 id="exampleModalLabel" class="modal-title">Add Bills</h5>
          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
        </div>
        <div class="modal-body">
          <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Product *</label>
                    <select required name="product_id" id="product_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Product...">
                    @foreach($product_list as $p)
                        <option value="{{$p->id}}">{{$p->name}}</option>
                      @endforeach
                    </select>
                </div>
                <div class="col-md-6 form-group">
                    <label>Price *</label>
                    <input type="text" name="price" class="form-control" placeholder="Enter Price">
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
        {{ Form::close() }}
      </div>
    </div>
</div>
<!-- END Add bill Model -->

<!-- TO Check Bill Model -->
<div id="tocheckModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
      <div class="modal-content">
        <!-- {!! Form::open(['route' => 'reconciliation.create', 'method' => 'post', 'files' => true]) !!} -->
        <div class="modal-header">
          <h5 class="modal-title">To Check <strong id="product_name_"></strong></h5>
          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
        </div>
        <div class="modal-body">
          
            <div class="row">

                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Category</th>
                                    <th>Qty</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody id="_all_tbody">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
               
               
            </div>
            <div class="form-group text-right">
              <input type="button" role="button" id="approveData" value="Approve" class="btn btn-success">
              <input type="button"  role="button" value="Decline"  id="declineData" class="btn btn-danger">
            </div>
        </div>
        <!-- {{ Form::close() }} -->
      </div>
    </div>
</div>
<!-- END TO Check Bill Model -->

<!-- Decline msg Model -->
<div id="declinemsgModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
    <div role="document" class="modal-dialog">
      <div class="modal-content">
        <!-- {!! Form::open(['route' => 'reconciliation.create', 'method' => 'post', 'files' => true]) !!} -->
        <div class="modal-header">
          <h5 class="modal-title declineTitle">To Check </h5>
          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
        </div>
        <div class="modal-body">
          
            <div class="row">

            <div class="col-md-12 form-group">
                    <label>Msg *</label>
                    <textarea class="form-control" name="" id="declineMsg" rows="5"></textarea>
                </div>
               
               
            </div>
            <div class="form-group text-right">
              
              <input type="button" role="button" id="declineNow" value="Decline" class="btn btn-danger">
            </div>
        </div>
        <!-- {{ Form::close() }} -->
      </div>
    </div>
</div>
<!-- END Decline msg Model -->

@endsection

@push('scripts')
<script type="text/javascript">

var productId='';
var productName='';

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


    $('#reconciliation-table').DataTable( {
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

    $(document).on("click","._tocheck_model",function(){

        var key=$(this).data("value");
        
        $.ajax({
        url:'reconciliation-show',
        type:'POST',
        data:{_token:'<?=csrf_token()?>',key:key},
        
        success:function(res)
        {
            
            $('#_all_tbody').html("");

            $("#product_name_").html(res.product_name.name);
            productId= res.product_name.id;
            productName = res.product_name.name;


            var html ="";

            if(res.inward_list!=null){
            html += '<tr>';
            html += '<td>Inward</td>';
            html += '<td>'+res.inward_list.qty+'</td>';
            html += '<td></td>';
            html += '</tr>';
            }

            if(res.indent_list!=null){
            html += '<tr>';
            html += '<td>Indent</td>';
            html += '<td>'+(res.indent_list.qty ==null ? 0 : res.indent_list.qty)+'</td>';
            html += '<td>'+(res.indent_list.l_price ==null ? 0 : res.indent_list.l_price)+'</td>';
            html += '</tr>';
            }

            if(res.reconciliation_bill_list!=null){
            html += '<tr>';
            html += '<td>Bill</td>';
            html += '<td>'+res.reconciliation_bill_list.qty+'</td>';
            html += '<td>'+res.reconciliation_bill_list.price+'</td>';
            html += '</tr>';
            }

            $("#_all_tbody").html(html);
 
        }

        })
    });

$(document).on("click","#declineData", function(){

    $(".declineTitle").html("Rejcetion  reason for "+productName)
    $("#tocheckModal").modal('hide');
    $("#declinemsgModal").modal('show');
    
});


$(document).on("click","#approveData", function(){


    $.ajax({
    url:'reconciliation-accept',
    type:'POST',
    data:{product_id:productId },
    success:function(res){
        $("#tocheckModal").modal('hide');
      if(res.success){
        // alert("Success wala alert")
        window.location.reload();
      }else{
        alert(res.message)
      }
    },
    error:function(){
        alert("ServerError")
    }
})

});


$(document).on("click","#declineNow", function(){

var declineMsg = $("#declineMsg").val();

if(declineMsg.trim()!=""){


$.ajax({
    url:'reconciliation-reject',
    type:'POST',
    data:{product_id:productId , msg:declineMsg},
    success:function(res){
        $("#declinemsgModal").modal('hide');
        if(res.success){
        // alert("Success wala alert")
        window.location.reload();
      }else{
        alert(res.message)
      }
    },
    error:function(){
        alert("ServerError")
    }
})

}else{
    alert("Kindly enter rejection message")
}

});




</script>
@endpush
