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
               
                <div class="login-main"> 
                  <form class="theme-form" method="POST" action="{{ route('password.email') }}">
                  @csrf
                    <h4>{{ __('Reset Password') }}</h4>
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class="form-group">
                      <label class="col-form-label">{{ __('E-Mail Address') }}</label>
                      <div class="form-input position-relative">
                        <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
                        @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                      </div>
                    </div>
                    
                    <div class="form-group mb-0">
                      
                      <button class="btn btn-primary btn-block w-100 mt-3" type="submit">{{ __('Send Password Reset Link') }}</button>
                    </div>
                    <p class="mt-4 mb-0 text-center">{{trans('file.Do not have an account?')}}<a href="{{url('register')}}" class="signup ms-2">{{trans('file.Register')}}</a></p>
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
    </div>
  </body>

</html>