@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Employee List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Employee</li>
                    <li class="breadcrumb-item active">Employee List</li>
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
                  @if(in_array("employees-add", $all_permission))
                    <div class="col-md-12 p-0">                    
                      <div class="form-group mb-0 me-0"></div>
                      <a class="btn btn-primary" href="{{route('employees.create')}}" > <i data-feather="plus-square"> </i>Add Employee</a>
                             
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
                      <table class="display" id="export-button">
                        <thead>
                        <tr>
                            <th>{{trans('file.Image')}}</th>
                            <th>{{trans('file.name')}}</th>
                            <th>{{trans('file.Email')}}</th>
                            <th>{{trans('file.Phone Number')}}</th>
                            <th>{{trans('file.Department')}}</th>
                            <th>{{trans('file.Address')}}</th>
                            <th class="not-exported">{{trans('file.action')}}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lims_employee_all as $key=>$employee)
                            @php $department = \App\Department::find($employee->department_id); @endphp
                            <tr data-id="{{$employee->id}}">
                                @if($employee->image)
                                <td> <img src="{{url('public/images/employee',$employee->image)}}" height="80" width="80">
                                </td>
                                @else
                                <td>No Image</td>
                                @endif
                                <td>{{ $employee->name }}</td>
                                <td>{{ $employee->email}}</td>
                                <td>{{ $employee->phone_number}}</td>
                                <td>{{ $department->name }}</td>
                                <td>{{ $employee->address}}
                                        @if($employee->city){{ ', '.$employee->city}}@endif
                                        @if($employee->state){{ ', '.$employee->state}}@endif
                                        @if($employee->postal_code){{ ', '.$employee->postal_code}}@endif
                                        @if($employee->country){{ ', '.$employee->country}}@endif</td>
                                <td>
                                   
                                        
                                        <ul class="action" user="menu">
                                            @if(in_array("employees-edit", $all_permission))
                                            <li class="edit">
                                                <a type="button" data-id="{{$employee->id}}" data-name="{{$employee->name}}" data-email="{{$employee->email}}" data-phone_number="{{$employee->phone_number}}" data-department_id="{{$employee->department_id}}" data-address="{{$employee->address}}" data-city="{{$employee->city}}" data-country="{{$employee->country}}" class="edit-btn btn btn-link" data-toggle="modal" data-target="#editModal"><i data-feather="edit"></i></a>
                                            </li>
                                            @endif
                                            
                                            @if(in_array("employees-delete", $all_permission))
                                            {{ Form::open(['route' => ['employees.destroy', $employee->id], 'method' => 'DELETE'] ) }}
                                            <li class="delete">
                                                <button type="submit" class="btn btn-link text-danger" onclick="return confirmDelete()"><i data-feather="trash-2"></i></button>
                                            </li>
                                            {{ Form::close() }}
                                            @endif
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

          <!-- Start Employee edit  Model -->
         
          <!--End Employee edit Model -->
        </div>
@stop
@section('js_section')
<script>
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