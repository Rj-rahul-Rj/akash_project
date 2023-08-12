@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Quotation List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Quotation</li>
                    <li class="breadcrumb-item active">Quotation List</li>
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
                  @if(in_array("quotes-add", $all_permission))
                    <div class="col-md-12 p-0">
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" href="{{route('quotations.create')}}" > <i data-feather="plus-square"> </i>Add Quotation</a>

                    </div>
                    @endif
                  </div>
                </div>
              </div>
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header pb-0">

                  </div>
                  <div class="card-body">
                    <div class="dt-ext table-responsive theme-scrollbar">
                      <table class="display quotation-list" id="export-button">
                        <thead>
                        <tr>
                            <th>Sl.No</th>
                            <th>Supplier Name</th>
                            <th>Product Name</th>
                            <th>Warehouse</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                          @php
                          $sl = 1

                          @endphp
                          @foreach($quotation_list as $ql)
                          <tr>
                            <td>{{$sl++}}</td>
                            <td>

                                @php
                                    $qemail = $ql->quotationemail;

                                    foreach($qemail as $qe){
                                      $supplier = App\Supplier::find($qe->supplier_id);
                                @endphp



                                        @if ($qe->status == '0')
                                        <a href="#" class="badge badge-info">{{$supplier->name}}</a>
                                        @else
                                        <a href="{{route('quotation-supplier-response',['id'=>$qe->ref_no])}}" class="badge badge-success">{{$supplier->name}}</a>
                                        @endif
                                @php
                                    }
                                @endphp
                            </td>
                            <td>
                                @php
                                    $qitem = $ql->quotationitem;
                                    foreach($qitem as $qi){
                                      $product = App\Product::find($qi->product_id);
                                @endphp
                                    <span class="badge badge-light text-dark">{{$product->name}}</span>
                                @php
                                    }
                                @endphp
                            </td>

                            <td> @if($ql->warehouse)
                                {{$ql->warehouse->name}}
                           @else

                           @endif</td>
                            <td>
                              <div class="action">
                                <ul>
                                    <li class="delete">
                                        <button type="submit" class="btn btn-link text-danger" onclick="return confirmDelete()"><i data-feather="trash-2"></i></button>
                                    </li>
                                    <li class="">
                                        <a href="{{route('supplier-response-list',['id'=>$ql->id])}}" target="_blank" class="btn btn-link"><i data-feather="file-plus"></i></a>
                                    </li>
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

          <!-- Start Employee edit  Model -->

          <!--End Employee edit Model -->
        </div>
@stop
@section('js_section')
<script>

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
@if($errors->has('name'))
<script>
   $.notify({
      message:'{{ $errors->first('name') }}'
   },
   {
      type:'danger',
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
@if($errors->has('image'))
<script>
   $.notify({
      message:'{{ $errors->first('email') }}'
   },
   {
      type:'danger',
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
@if($errors->has('email'))
<script>
   $.notify({
      message:'{{ $errors->first('image') }}'
   },
   {
      type:'danger',
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
@if(session()->has('not_permitted'))
<script>
   $.notify({
      message:'{{ session()->get('not_permitted') }}'
   },
   {
      type:'danger',
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
