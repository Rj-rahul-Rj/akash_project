@extends('layout.master')
@section('content')
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3> Add Employee</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Employee</li>
                        <li class="breadcrumb-item active">Add Employee</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid add-product">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header pb-0">
                        <p>The field labels marked with <span class="text-danger">*</span> are required input fields.
                        </p>
                    </div>
                    <div class="card-body">
                        <div class="product-info">
                        {!! Form::open(['route' => 'employees.store', 'method' => 'post', 'files' => true]) !!}
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="product-group">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.name')}} <span
                                                                class="text-danger">*</span></strong>
                                                        </label>
                                                        <input type="text" name="employee_name" required
                                                            class="form-control">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Image')}}</label>
                                                        <input type="file" name="image" class="form-control">
                                                        @if($errors->has('image'))
                                                        <span>
                                                            <strong>{{ $errors->first('image') }}</strong>
                                                        </span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Department')}} <span
                                                                class="text-danger">*</span></label>
                                                        <select class="form-select selectpicker" name="department_id"
                                                            required>
                                                            @foreach($lims_department_list as $department)
                                                            <option value="{{$department->id}}">{{$department->name}}
                                                            </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Email')}} <span
                                                                class="text-danger">*</span></label>
                                                        <input type="email" name="email"
                                                            placeholder="example@example.com" required
                                                            class="form-control">
                                                        @if($errors->has('email'))
                                                        <span>
                                                            <strong>{{ $errors->first('email') }}</strong>
                                                        </span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Phone Number')}} <span
                                                                class="text-danger">*</span></label>
                                                        <input type="number" name="phone_number" required
                                                            class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Payroll <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="payroll" required
                                                            class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Address')}} <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="address" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.City')}} <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="city" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Country')}} <span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="country" class="form-control">
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="product-group">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Add User')}}</label>
                                                        <input type="checkbox" name="user" checked value="1" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" id="user-input">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.UserName')}} <span class="text-danger">*</span></label>
                                                        <input type="text" name="name" required class="form-control">
                                                        @if($errors->has('name'))
                                                        <span>
                                                            <strong>{{ $errors->first('name') }}</strong>
                                                        </span>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Password')}} <span class="text-danger">*</span></label>
                                                        <input required type="password" name="password"
                                                            class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Confirm Password <span class="text-danger">*</span></label>
                                                        <input class="form-control showpasswordss" id="password-confirm" type="password" name="password_confirmation" required="" >
                                                        <div class="show-hide"><span class="show"></span></div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Role')}} <span class="text-danger">*</span></label>
                                                        <select name="role_id" class="selectpicker form-select">
                                                            @foreach($lims_role_list as $role)
                                                            <option value="{{$role->id}}">{{$role->name}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12" id="warehouse">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Warehouse')}} <span class="text-danger">*</span></label>
                                                        <select name="warehouse_id" class="selectpicker form-select"
                                                            data-live-search="true" data-live-search-style="begins"
                                                            title="Select Warehouse...">
                                                            @foreach($lims_warehouse_list as $warehouse)
                                                            <option value="{{$warehouse->id}}">{{$warehouse->name}}
                                                            </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12" id="biller">
                                                    <div class="mb-3">
                                                        <label class="form-label">{{trans('file.Biller')}} <span class="text-danger">*</span></label>
                                                        <select name="biller_id" class="selectpicker form-select"
                                                            data-live-search="true" data-live-search-style="begins"
                                                            title="Select Biller...">
                                                            @foreach($lims_biller_list as $biller)
                                                            <option value="{{$biller->id}}">{{$biller->name}}
                                                                ({{$biller->company_name}})</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>


                                            </div>


                                        </div>
                                    </div>
                                </div>


                                <div class="mt-4">
                                    <div class="row">
                                        <div class="col-sm-12 text-end">
                                            <input type="submit" value="{{trans('file.submit')}}"
                                                class="btn btn-primary me-3">
                                        </div>
                                    </div>
                                </div>
                        {!! Form::close() !!}
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
    $('#warehouse').hide();
    $('#biller').hide();

    $('input[name="user"]').on('change', function () {
        if ($(this).is(':checked')) {
            $('#user-input').show(400);
            $('input[name="name"]').prop('required', true);
            $('input[name="password"]').prop('required', true);
            $('input[name="password_confirmation"]').prop('required', true);
            $('select[name="role_id"]').prop('required', true);
        } else {
            $('#user-input').hide(400);
            $('input[name="name"]').prop('required', false);
            $('input[name="password"]').prop('required', false);
            $('input[name="password_confirmation"]').prop('required', false);
            $('select[name="role_id"]').prop('required', false);
            $('select[name="warehouse_id"]').prop('required', false);
            $('select[name="biller_id"]').prop('required', false);
        }
    });

    $('select[name="role_id"]').on('change', function () {
        if ($(this).val() > 2) {
            $('#warehouse').show(400);
            $('#biller').show(400);
            $('select[name="warehouse_id"]').prop('required', true);
            $('select[name="biller_id"]').prop('required', true);
        } else {
            $('#warehouse').hide(400);
            $('#biller').hide(400);
            $('select[name="warehouse_id"]').prop('required', false);
            $('select[name="biller_id"]').prop('required', false);
        }
    });

</script>

@if(Session::has('flash_message'))   
<script>
   $.notify({
      title:'Oops...',
      message:'{!! Session::get('flash_message') !!}'
   },
   {
    type:'danger',
      allow_dismiss:true,
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
