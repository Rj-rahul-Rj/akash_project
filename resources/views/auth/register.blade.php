<?php $general_setting = DB::table('general_settings')->find(1); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="manifest" href="{{url('manifest.json')}}">
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />
    <title>{{$general_setting->site_title}}</title>
  

    <link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
 
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/bootstrap.css')}}">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{asset('assets/css/color-1.css')}}" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/responsive.css')}}">
  </head>
  <body>
    <!-- Loader starts-->
    <div class="loader-wrapper">
      <div class="dot"></div>
      <div class="dot"></div>
      <div class="dot"></div>
      <div class="dot"> </div>
      <div class="dot"></div>
    </div>
    <!-- Loader ends-->
    <!-- login page start-->
    <div class="container-fluid">
      <div class="row">
        <div class="col-xl-5">
            <img class="bg-img-cover bg-center" src="{{asset('assets/images/login/3.jpg')}}" alt="looginpage">
        </div>
        <div class="col-xl-7 p-0">    
          <div class="login-card">
            <div>
              <div>
                  <a class="logo" href="">
                    <!-- @if($general_setting->site_logo)
                        <img src="{{url('public/logo', $general_setting->site_logo)}}" width="110">
                        @else -->
                        <!--
                        <span>{{$general_setting->site_title}}</span> -->
                        <!-- @endif -->
                    </a>
                  </div>
              <div class="login-main"> 
              @if(session()->has('delete_message'))
            <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('delete_message') }}</div>
            @endif
                <form class="theme-form" method="POST" action="{{ route('register') }}">
                @csrf
                  <h4>Create your account</h4>
                  <p>Enter your personal details to create account</p>
                  <div class="form-group">
                    <label class="col-form-label pt-0 label-material">{{trans('file.UserName')}} <span class="text-danger">*</span></label>
                    <input class="form-control" id="register-username" type="text" name="name" required >
                    @if ($errors->has('name'))
                    <p>
                        <strong>{{ $errors->first('name') }}</strong>
                    </p>
                @endif
                  </div>
                  <div class="form-group">
                    <label class="col-form-label label-material">{{trans('file.Email')}} <span class="text-danger">*</span></label>
                    <input class="form-control" id="register-email" type="email" name="email" required >
                    @if ($errors->has('email'))
                    <p>
                        <strong>{{ $errors->first('email') }}</strong>
                    </p>
                @endif
                  </div>
                  <div class="form-group">
                    <label class="col-form-label label-material">{{trans('file.Phone Number')}} <span class="text-danger">*</span></label>
                    <input class="form-control" id="register-phone" type="text" name="phone_number" required >
                  </div>
                  <div class="form-group">
                    <label class="col-form-label label-material">{{trans('file.Company Name')}}</label>
                    <input class="form-control"  id="register-company" type="text" name="company_name" >
                  </div>
                  <div class="form-group">
                    <label class="col-form-label">Select Role <span class="text-danger">*</span></label>
                    <select class="form-select btn-square digits" name="role_id" id="role-id">
                      <option value="" disable>Select Role </option>
                        @foreach($lims_role_list as $role)
                      <option value="{{$role->id}}">{{$role->name}}</option>
                  @endforeach
                    </select>
                  </div>

                  <div id="customer-section">
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.name')}} <span class="text-danger">*</span></label>
                      <input class="form-control customer-field"  id="customer-name" type="text" name="customer_name" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label">Select customer group <span class="text-danger">*</span></label>
                      <select class="form-select btn-square digits customer-field" name="customer_group_id" >
                        <option value="" disable>Select customer group </option>
                        @foreach($lims_customer_group_list as $customer_group)
                          <option value="{{$customer_group->id}}">{{$customer_group->name}}</option>
                      @endforeach
                      </select>
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.Tax Number')}}</label>
                      <input class="form-control" id="customer-tax-number" type="text" name="tax_no" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.Address')}} <span class="text-danger">*</span></label>
                      <input class="form-control customer-field" id="customer-address" type="text" name="address" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.City')}} <span class="text-danger">*</span></label>
                      <input class="form-control customer-field"  id="customer-city" type="text" name="city" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.State')}}</label>
                      <input class="form-control" id="customer-state" type="text" name="state" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.Postal Code')}}</label>
                      <input class="form-control" id="customer-postal" type="text" name="postal_code" >
                    </div>
                    <div class="form-group">
                      <label class="col-form-label label-material">{{trans('file.Country')}}</label>
                      <input class="form-control" id="customer-country" type="text" name="country" >
                    </div>

                  </div>

                  <div class="form-group" id="biller-id">
                    <label class="col-form-label">Select Biller <span class="text-danger">*</span></label>
                    <select class="form-select btn-square digits"name="biller_id">
                      <option value="" disable>Select Biller </option>
                         @foreach($lims_biller_list as $biller)
                      <option value="{{$biller->id}}">{{$biller->name}} ({{$biller->phone_number}})</option>
                  @endforeach
                    </select>
                  </div>
                  
                  <div class="form-group" id="warehouse-id">
                    <label class="col-form-label">Select Warehouse <span class="text-danger">*</span></label>
                    <select class="form-select btn-square digits"name="warehouse_id">
                      <option value="" disable>Select Warehouse </option>
                         @foreach($lims_warehouse_list as $warehouse)
                      <option value="{{$warehouse->id}}">{{$warehouse->name}}</option>
                  @endforeach
                    </select>
                  </div>


                  <div class="form-group">
                    <label class="col-form-label label-material">{{trans('file.Password')}} <span class="text-danger">*</span></label>
                    <div class="form-input position-relative">
                      <input class="form-control showpasswordss" id="password" type="password" name="password" required >
                      <div class="show-hide"><span class="show"></span></div>
                      @if ($errors->has('password'))
                    <p>
                        <strong>{{ $errors->first('password') }}</strong>
                    </p>
                @endif
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-form-label label-material">{{trans('file.Confirm Password')}} <span class="text-danger">*</span></label>
                    <div class="form-input position-relative">
                      <input class="form-control showpasswordss" id="password-confirm" type="password" name="password_confirmation" required="" >
                      <div class="show-hide"><span class="show"></span></div>
                    </div>
                  </div>
                  <div class="form-group mb-0">
                    <div class="checkbox p-0">
                      <input id="checkbox1" type="checkbox">
                      <label class="text-muted" for="checkbox1">Agree with<a class="ms-2" href="javascript:void(0)">Privacy Policy</a></label>
                    </div>
                    <button class="btn btn-primary btn-block w-100 mt-3" type="submit">Create Account</button>
                  </div>
                  
                 <p class="mt-4 mb-0 text-center">{{trans('file.Already have an account')}}?<a href="{{url('login')}}" class="signup ms-2">{{trans('file.LogIn')}}</a></p>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- latest jquery-->
      <script src="{{asset('assets/js/jquery-3.6.0.min.js')}}"></script>
      <!-- Bootstrap js-->
      <script src="{{asset('assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
      <!-- feather icon js-->
      <script src="{{asset('assets/js/icons/feather-icon/feather.min.js')}}"></script>
      <script src="{{asset('assets/js/icons/feather-icon/feather-icon.js')}}"></script>
      <!-- scrollbar js-->
      <!-- Sidebar jquery-->
      <script src="{{asset('assets/js/config.js')}}"></script>
      <!-- Template js-->
      <script src="{{asset('assets/js/script.js')}}"></script>
      <!-- login js-->

      <script type="text/javascript">
      // ------------------------------------------------------- //
    // Material Inputs
    // ------------------------------------------------------ //

        var materialInputs = $('input.form-control');

        // activate labels for prefilled values
        materialInputs.filter(function() { return $(this).val() !== ""; }).siblings('.label-material').addClass('active');

        // move label on focus
        materialInputs.on('focus', function () {
            $(this).siblings('.label-material').addClass('active');
        });

        // remove/keep label on blur
        materialInputs.on('blur', function () {
            $(this).siblings('.label-material').removeClass('active');

            if ($(this).val() !== '') {
                $(this).siblings('.label-material').addClass('active');
            } else {
                $(this).siblings('.label-material').removeClass('active');
            }
        });


        $("#biller-id").hide();
        $("#warehouse-id").hide();
        $("#customer-section").hide();

        $("#role-id").on("change", function () {
            if($(this).val() == '5') {
              $("#customer-section").show(300);
              $(".customer-field").prop('required', true);
              $("#biller-id").hide(300);
              $("#warehouse-id").hide(300);
              $("select[name='biller_id']").prop('required', false);
              $("select[name='warehouse_id']").prop('required', false);
            }
            else if($(this).val() > 2) {
              $("#customer-section").hide(300);
              $("#biller-id").show(300);
              $("#warehouse-id").show(300);
              $("select[name='biller_id']").prop('required', true);
              $("select[name='warehouse_id']").prop('required', true);
              $(".customer-field").prop('required', false);
            }
            else {
              $("#biller-id").hide(300);
              $("#warehouse-id").hide(300);
              $("#customer-section").hide(300);
              $("select[name='biller_id']").prop('required', false);
              $("select[name='warehouse_id']").prop('required', false);
              $(".customer-field").prop('required', false);
            }
        });
    </script>
    </div>
  </body>

</html>