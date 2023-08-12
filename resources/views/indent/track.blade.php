@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3>Track Indent </h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Indent</li>
                    <li class="breadcrumb-item active">Track Indent</li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="row project-cards">

              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header pb-0">

                  </div>
                  <div class="card-body">
                    <div class="dt-ext table-responsive theme-scrollbar">
                      <table class="display" id="export-button">
                        <thead>
                        <tr>
                            <th>Sl.No</th>
                            <th>Name</th>
                            <th>Warehouse</th>
                            <th>Qty</th>
                            <th>Exp. Date</th>
                            <th>Status</th>
                            <th>Options</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                $id = 1;
                @endphp
                        @foreach($indent as $key=>$ind)
                        <td>{{$id++}}</td>
                        <td>{{$ind->product->name}}</td>
                        <td>{{$ind->product->whouse_id}}</td>
                        <td>{{$ind->qty}}</td>
                        <td>{{$ind->exp_date}}</td>
                        <td>
                            <div class="badge badge-danger">Pending</div>
                            <div class="badge badge-success">Order Done</div>
                            <div class="badge badge-info">Accepted and Order Panding</div>
                            <div class="badge badge-danger">Decline</div>
                        </td>
                        <td>
                            <div class="badge badge-success">Accept</div>
                            <div class="badge badge-danger">Decline</div>
                            <hr>
                            <div class="badge badge-success"> Accept and Order</div>
                        </td>
                                <td>
                                        <ul class=" edit-options action" user="menu">
                                            <li class="edit">
                                                {{-- <a href=""  class="edit-btn btn btn-link" ><i class="dripicons-document-edit"></i>  <i data-feather="edit"></i></a> --}}
                                                <a href=""  class="btn btn-info" ><i class="dripicons-document-edit"></i> Approve</a>
                                            </li>
                                            <li class="divider"></li>
                                            {{-- <form method="POST" action="" accept-charset="UTF-8">
                                                @csrf
                                            <li class="delete">
                                            <button type="submit" class="btn btn-link text-danger" onclick="return confirmDelete()"><i data-feather="trash-2"></i></button>
                                            </li>
                                        </form> --}}
                                        </ul>

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

           <!-- Start Add Department Model -->
           <div class="modal fade modal-bookmark" id="departmentaddModal" tabindex="-1" role="dialog" aria-labelledby="departmentaddLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="departmentaddLabel">Add Department</h5>
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p><i>The field labels marked with * are required input fields.</i></p>
                  <form class="form-bookmark needs-validation" method="post" enctype="multipart/form-data" action="{{route('departments.store')}}" id="bookmark-form" novalidate="">
                  @csrf
                  <div class="row g-2">
                      <div class="mb-3 col-md-12 mt-0">
                        <label for="con-name">Name <span class="text-danger">*</span></label>
                          {{Form::text('name',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'Type department name...'))}}
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
          <!--End Add Department Model -->

          <!-- Start Department edit  Model -->
          <div class="modal fade modal-bookmark" id="departmenteditModal" tabindex="-1" role="dialog" aria-labelledby="editLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="editLabel">Edit Department</h5>
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p><i>The field labels marked with * are required input fields.</i></p>
                  {{ Form::open(['route' => ['departments.update', 1], 'method' => 'PUT'] ) }}
                  <div class="row g-2">
                      <div class="mb-3 col-md-12 mt-0">
                        <label for="con-name">Name <span class="text-danger">*</span></label>
                        {{Form::text('name',null, array('required' => 'required', 'class' => 'form-control'))}}
                      </div>

                    </div>
                    <input type="hidden" name="department_id">
                   <div style="text-align:end;">
                      <button class="btn btn-secondary" type="submit">Submit</button>
                   </div>

                   {{ Form::close() }}
                </div>
              </div>
            </div>
          </div>
          <!--End Department edit Model -->
        </div>
@stop
@section('js_section')
<script>

    var department_id = [];
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;


 function confirmDelete() {
        if (confirm("Are you sure want to delete?")) {
            return true;
        }
        return false;
    }

    $(document).ready(function() {
    $('.edit-btn').on('click', function(){
        $("#departmenteditModal input[name='department_id']").val($(this).data('id'));
        $("#departmenteditModal input[name='name']").val($(this).data('name'));
    });
});

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
