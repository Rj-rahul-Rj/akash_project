@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Indent List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Indent</li>
                    <li class="breadcrumb-item active">Indent List</li>
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
                      <a class="btn btn-primary" href="{{route('indent-add')}}"> <i data-feather="plus-square"> </i>Add Indent</a>

                    </div>

                  </div>
                </div>
              </div>
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header pb-0">

                  </div>
                  <div class="card-body">
                    <div class="dt-ext table-responsive theme-scrollbar">
                      <table class="display" id="export-button">
                        <thead>
                        <tr>
                            <th>Sl</th>
                            <!--<th>Warehouse</th>-->
                            <th>Item</th>
                            <th>Category</th>
                            <th>Qty</th>
                            <!--<th>Dept.</th>-->
                            <th>Date/RQ.Dt</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                $id = 1;
                @endphp
                        @foreach($indent as $i)
                                <td>{{$id++}}</td>
                                <!--<td></td>-->
                                <td>{{$i->product->name}}</td>
                                <td>@if ($i->category)
                                    {{$i->category->name}}
                                @endif

                                </td>
                                <td>{{$i->l_qty_order}}</td>
                                <!--<td></td>-->
                                <td>{{$i->exp_date}}</td>
                                <td>
                                        <ul class=" edit-options action" user="menu">
                                            <li class="edit">
                                                <a href="{{route('indent-edit',['id'=>$i->id])}}"  class="edit-btn btn btn-link" ><i class="dripicons-document-edit"></i>  <i data-feather="edit"></i></a>
                                            </li>
                                            <li class="divider"></li>
                                            <form method="POST" action="{{route('indent-delete',['id'=>$i->id])}}" accept-charset="UTF-8">
                                                @csrf
                                            <li class="delete">
                                            <button type="submit" class="btn btn-link text-danger" onclick="return confirmDelete()"><i data-feather="trash-2"></i></button>
                                            </li>
                                        </form>
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
