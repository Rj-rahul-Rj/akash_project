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
                    <!--@if($general_setting->site_logo)-->
                    <!--    <img src="{{url('public/logo', $general_setting->site_logo)}}" width="110">-->
                    <!--    @else-->
                        <!--
                        <span>{{$general_setting->site_title}}</span> -->
                        <!--@endif-->
                    </a>
                </div>
              <div class="login-main"> 
             
            @if(session()->has('delete_message'))
            <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('delete_message') }}</div>
            @endif
                <form class="theme-form" method="POST" action="{{ route('login') }}" id="login-form">
              @csrf
                  <h4 class="text-center">Sign in to account</h4>
                  <p class="text-center">Enter your email & password to login</p>
                  <div class="form-group">
                    <label class="col-form-label">{{trans('file.UserName')}}</label>
                    <input class="form-control" id="login-username" type="text" name="name" required="" >
                   
                @if(session()->has('error'))
                    <p>
                        <strong>{{ session()->get('error') }}</strong>
                    </p>
                @endif
                  </div>
                  <div class="form-group">
                    <label class="col-form-label">{{trans('file.Password')}}</label>
                    <div class="form-input position-relative">
                      <input class="form-control showpasswordss" id="login-password" type="password" name="password" required="" >
                      <div class="show-hide"><span class="show"></span></div>
                      
                @if(session()->has('error'))
                    <p>
                        <strong>{{ session()->get('error') }}</strong>
                    </p>
                @endif
                    </div>
                  </div>
                  <div class="form-group mb-0">
                    <div class="checkbox p-0">
                      <input id="checkbox1" type="checkbox">
                      <label class="text-muted" for="checkbox1">Remember password</label>
                    </div><a class="link" href="{{ route('password.request') }}">{{trans('file.Forgot Password?')}}</a>
                    <div class="text-end mt-3">
                      <button class="btn btn-primary btn-block w-100" type="submit">{{trans('file.LogIn')}}</button>
                    </div>
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