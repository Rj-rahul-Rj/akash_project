<!DOCTYPE html>

<html dir="@if( Config::get('app.locale') == 'ar' || $general_setting->is_rtl){{'rtl'}}@endif">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="csrf-token" content="{{ csrf_token() }}" /> -->
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />
    <title>{{$general_setting->site_title}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="manifest" href="{{url('manifest.json')}}">

    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/font-awesome.css')}}">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/icofont.css')}}">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/themify.css')}}">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/flag-icon.css')}}">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/feather-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/scrollbar.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/animate.css')}}">
    <!-- datatable css -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/datatables.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/datatable-extension.css')}}">
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/bootstrap.css')}}">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{asset('assets/css/color-1.css')}}" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/responsive.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/select2.css')}}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous">
</script>
  </head>
  <body>
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends-->
    <!-- Loader starts-->
    <!-- <div class="loader-wrapper">
      <div class="dot"></div>
      <div class="dot"></div>
      <div class="dot"></div>
      <div class="dot"> </div>
      <div class="dot"></div>
    </div> -->
    <!-- Loader ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <!-- Page Header Start-->
      <div class="page-header">
        <div class="header-wrapper row m-0">
          <div class="header-logo-wrapper col-auto p-0">
            <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
            <div class="logo-header-main"><a href=""><img class="img-fluid for-light img-100" src="../assets/images/logo/logo2.png" alt=""><img class="img-fluid for-dark" src="../assets/images/logo/logo.png" alt=""></a></div>
          </div>
          <div class="left-header col horizontal-wrapper ps-0">
            <div class="left-menu-header">
              <!-- <ul class="app-list">
                <li class="onhover-dropdown">
                  <div class="app-menu"> <i data-feather="folder-plus"></i></div>
                  <ul class="onhover-show-div left-dropdown">
                    <li> <a href="file-manager.html">File Manager</a></li>
                    <li> <a href="kanban.html"> Kanban board</a></li>
                    <li> <a href="social-app.html"> Social App</a></li>
                    <li> <a href="bookmark.html"> Bookmark</a></li>
                  </ul>
                </li>
              </ul>
              <ul class="header-left"> 
                <li class="onhover-dropdown"><span class="f-w-600">Dashboard</span><span><i class="middle" data-feather="chevron-down"></i></span>
                  <ul class="onhover-show-div left-dropdown">
                    <li> <a href="">Default</a></li>
                    <li> <a href="dashboard-02.html"> Ecommerce</a></li>
                  </ul>
                </li>
                <li class="onhover-dropdown"><span class="f-w-600">Application</span><span><i class="middle" data-feather="chevron-down"></i></span>
                  <ul class="onhover-show-div left-dropdown">
                    <li class="flyout-right"><a href="javascript:void(0)">Project</a>
                      <ul>
                        <li> <a href="projects.html">Project List</a></li>
                        <li> <a href="projectcreate.html">Project Create</a></li>
                      </ul>
                    </li>
                    <li><a href="file-manager.html">File manager</a></li>
                    <li><a href="kanban.html">kanban</a></li>
                    <li class="flyout-right"><a href="javascript:void(0)">Ecommerce</a>
                      <ul>
                        <li> <a href="product.html">Product</a></li>
                        <li> <a href="product-page.html">Product Page</a></li>
                        <li> <a href="list-products.html">Product List</a></li>
                        <li> <a href="payment-details.html">Payment Details</a></li>
                        <li> <a href="">Order History</a></li>
                        <li> <a href="">Invoice</a></li>
                        <li> <a href="">Cart</a></li>
                        <li> <a href="list-wish.html">Wishlist</a></li>
                        <li> <a href="checkout.html">Checkout</a></li>
                        <li> <a href="pricing.html">Pricing </a></li>
                      </ul>
                    </li>
                    <li class="flyout-right"><a href="javascript:void(0)">Email</a>
                      <ul>
                        <li> <a href="">Mail Inbox</a></li>
                        <li> <a href="email_read.html">Read Mail</a></li>
                        <li> <a href="email_compose.html">Compose</a></li>
                      </ul>
                    </li>
                    <li class="flyout-right"><a href="javascript:void(0)">Chat</a>
                      <ul>
                        <li> <a href="chat.html">Chat App</a></li>
                        <li> <a href="chat-video.html">Video Chat</a></li>
                      </ul>
                    </li>
                    <li class="flyout-right"><a href="javascript:void(0)">Users</a>
                      <ul>
                        <li> <a href="user-profile.html">User Profile</a></li>
                        <li> <a href="edit-profile.html">Users Edit</a></li>
                        <li> <a href="user-cards.html">User Cards</a></li>
                      </ul>
                    </li>
                    <li><a href="bookmark.html">Bookmarks</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                    <li><a href="social-app.html">Social App</a></li>
                  </ul>
                </li>
                <li class="onhover-dropdown"> <span class="f-w-600">More pages</span><span><i class="middle" data-feather="chevron-down"></i></span>
                  <ul class="onhover-show-div left-dropdown">
                    <li><a href="landing-page.html">Landing Page</a></li>
                    <li><a href="sample-page.html">Sample Page</a></li>
                    <li><a href="internationalization.html">Internationalization</a></li>
                    <li class="flyout-right"><a href="javascript:void(0)">Starter-Kit</a>
                      <ul> 
                        <li class="flyout-right"><a href="javascript:void(0)">Color version</a>
                          <ul>
                            <li> <a href="starter-kit/">Layout Light</a></li>
                            <li> <a href="starter-kit/layout-dark.html">Layout Dark</a></li>
                          </ul>
                        </li>
                        <li class="flyout-right"><a href="javascript:void(0)">Page Layout</a>
                          <ul>
                            <li> <a href="starter-kit/boxed.html">Boxed</a></li>
                            <li> <a href="starter-kit/layout-rtl.html">RTL</a></li>
                          </ul>
                        </li>
                        <li> <a href="starter-kit/hide-on-scroll.html">Hide Menu On Scroll</a></li>
                        <li class="flyout-right"><a href="javascript:void(0)">Footers</a>
                          <ul>
                            <li> <a href="starter-kit/footer-light.html">Footer Light</a></li>
                            <li> <a href="starter-kit/footer-dark.html">Footer Dark </a></li>
                            <li> <a href="starter-kit/footer-fixed.html">Footer Fixed</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul> -->
            </div>
          </div>
          <div class="nav-right col-6 pull-right right-header p-0">
            <ul class="nav-menus">
              <!-- <li> 
                <div class="right-header ps-0">
                  <div class="input-group">
                    <div class="input-group-prepend"><span class="input-group-text mobile-search"><i class="fa fa-search"></i></span></div>
                    <input class="form-control" type="text" placeholder="Search Here........">
                  </div>
                </div>
              </li> -->
              <!-- <li class="serchinput">
                <div class="serchbox"><i data-feather="search"></i></div>
                <div class="form-group search-form">
                  <input type="text" placeholder="Search here...">
                </div>
              </li> -->
              <!-- <li>
                <div class="mode"><i class="fa fa-moon-o"></i></div>
              </li> -->
              <li class="onhover-dropdown">
                <div class="notification-box"><i data-feather="bell"></i></div>
                <ul class="notification-dropdown onhover-show-div">
                  <li><i data-feather="bell">            </i>
                    <h6 class="f-18 mb-0">Notitications</h6>
                  </li>
                  <li>
                    <div class="d-flex align-items-center">
                      <div class="flex-shrink-0"><i data-feather="truck"></i></div>
                      <div class="flex-grow-1">
                        <p><a href="">Delivery processing </a><span class="pull-right">6 hr</span></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="d-flex align-items-center">
                      <div class="flex-shrink-0"><i data-feather="shopping-cart"></i></div>
                      <div class="flex-grow-1">
                        <p><a href="">Order Complete</a><span class="pull-right">3 hr</span></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="d-flex align-items-center">
                      <div class="flex-shrink-0"><i data-feather="file-text"></i></div>
                      <div class="flex-grow-1">
                        <p><a href="">Tickets Generated</a><span class="pull-right">1 hr</span></p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="d-flex align-items-center">
                      <div class="flex-shrink-0"><i data-feather="send"></i></div>
                      <div class="flex-grow-1">
                        <p><a href="">Delivery Complete</a><span class="pull-right">45 min</span></p>
                      </div>
                    </div>
                  </li>
                  <li><a class="btn btn-primary" href="javascript:void(0)">Check all notification</a></li>
                </ul>
              </li>
              <li class="onhover-dropdown">
                <div class="message"><i data-feather="message-square"></i></div>
                <ul class="message-dropdown onhover-show-div">
                  <li><i data-feather="message-square">            </i>
                    <h6 class="f-18 mb-0">Messages</h6>
                  </li>
                  <li>
                    <div class="d-flex align-items-start">
                      <div class="message-img bg-light-primary"><img src="../assets/images/user/3.jpg" alt=""></div>
                      <div class="flex-grow-1">
                        <h5 class="mb-1"><a href="">Emay Walter</a></h5>
                        <p>Do you want to go see movie?</p>
                      </div>
                      <div class="notification-right"><i data-feather="x"></i></div>
                    </div>
                  </li>
                  <li>
                    <div class="d-flex align-items-start">
                      <div class="message-img bg-light-primary"><img src="../assets/images/user/6.jpg" alt=""></div>
                      <div class="flex-grow-1">
                        <h5 class="mb-1"><a href="">Jason Borne</a></h5>
                        <p>Thank you for rating us.</p>
                      </div>
                      <div class="notification-right"><i data-feather="x"></i></div>
                    </div>
                  </li>
                  <li>
                    <div class="d-flex align-items-start">
                      <div class="message-img bg-light-primary"><img src="../assets/images/user/10.jpg" alt=""></div>
                      <div class="flex-grow-1">
                        <h5 class="mb-1"><a href="">Sarah Loren</a></h5>
                        <p>What`s the project report update?</p>
                      </div>
                      <div class="notification-right"><i data-feather="x"></i></div>
                    </div>
                  </li>
                  <li><a class="btn btn-primary" href="">Check Messages</a></li>
                </ul>
              </li>
              <li class="maximize"><a href="#!" onclick="javascript:toggleFullScreen()"><i data-feather="maximize-2"></i></a></li>
              
              <li class="profile-nav onhover-dropdown">
                <div class="account-user"><i data-feather="user"></i></div>
                <ul class="profile-dropdown onhover-show-div">
                  
                  <li><a href="{{route('user.profile', ['id' => Auth::id()])}}"><i data-feather="user"></i><span>Profile</span></a></li>
                  
                  <li><a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();"><i data-feather="log-in"> </i><span>Logout</span></a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                  </li>

                </ul>
              </li>
            </ul>
          </div>
          <script class="result-template" type="text/x-handlebars-template">
            <div class="ProfileCard u-cf">                        
            <div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
            <div class="ProfileCard-details">
            <div class="ProfileCard-realName"></div>
            </div>
            </div>
          </script>
          <script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
        </div>
      </div>
      <!-- Page Header Ends-->
      <!-- Page Body Start-->
      <div class="page-body-wrapper default-menu default-menu">
        <!-- Page Sidebar Start-->
        <div class="sidebar-wrapper">
          <div>
            <div class="logo-wrapper"><a href=""><img class="img-fluid for-light" style="width:35%;" src="{{url('public/logo', $general_setting->site_logo)}}" alt=""></a>
              <div class="back-btn"><i data-feather="grid"></i></div>
              <div class="toggle-sidebar icon-box-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
            </div>
            <div class="logo-icon-wrapper"><a href="">
                <div class="icon-box-sidebar"><i data-feather="grid"></i></div></a></div>
            <nav class="sidebar-main">
              <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
              <div id="sidebar-menu">
                <ul class="sidebar-links" id="simple-bar">
                  <li class="back-btn">
                    <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i></div>
                  </li>
                  <li class="pin-title sidebar-list">
                    <h6>Pinned</h6>
                  </li>
                  <hr>

                  <!-- Start Dashboard Nav -->
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title link-nav" href="{{url('/')}}">
                      <i data-feather="home"></i> <span class="lan-3">Dashboard</span>
                    </a>
                  </li>
                  <!-- Start Dashboard Nav -->

                  <!-- Start Product Nav -->
              <?php
                  $role = DB::table('roles')->find(Auth::user()->role_id);
                  $category_permission_active = DB::table('permissions')
                      ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                      ->where([
                          ['permissions.name', 'category'],
                          ['role_id', $role->id] 
                      ])->first();

                  $index_permission_active = DB::table('permissions')
                      ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                      ->where([
                          ['permissions.name', 'products-index'],
                          ['role_id', $role->id] 
                      ])->first();

                  $print_barcode_active = DB::table('permissions')
                      ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                      ->where([
                          ['permissions.name', 'print_barcode'],
                          ['role_id', $role->id] 
                      ])->first();

                  $stock_count_active = DB::table('permissions')
                      ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                      ->where([
                          ['permissions.name', 'stock_count'],
                          ['role_id', $role->id] 
                      ])->first();

                  $adjustment_active = DB::table('permissions')
                      ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                      ->where([
                          ['permissions.name', 'adjustment'],
                          ['role_id', $role->id] 
                      ])->first();
              ?>
                @if($category_permission_active || $index_permission_active || $print_barcode_active || $stock_count_active || $adjustment_active)
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Product</span>
                    </a>
                    <ul class="sidebar-submenu">
                      @if($category_permission_active)
                      <li><a href="{{route('category.index')}}">{{__('file.category')}}</a></li>
                      @endif
                      
                      @if($index_permission_active)
                      <li><a href="{{route('products.index')}}">{{__('file.product_list')}}</a></li>
                      @endif

                      @if($print_barcode_active)
                      <li><a href="{{route('product.printBarcode')}}">{{__('file.print_barcode')}}</a></li>
                      @endif

                      @if($adjustment_active)
                      <li><a href="{{route('qty_adjustment.index')}}">{{trans('file.Adjustment List')}}</a></li>
                      @endif

                      @if($stock_count_active)
                      <li><a href="{{route('stock-count.index')}}">{{trans('file.Stock Count')}}</a></li>
                      @endif

                    </ul>
                  </li>
                @endif
                <!-- End Product Nav -->
                  
                <!-- Start Purchase Nav -->          
                <?php
                    $index_permission_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                            ['permissions.name', 'purchases-index'],
                            ['role_id', $role->id] 
                        ])->first();
                ?>
                @if($index_permission_active)
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Purchase</span>
                    </a>
                    <ul class="sidebar-submenu">
                      <li><a href="{{route('purchases.index')}}">{{__('file.Purchase List')}}</a></li>
                      <?php
                          $add_permission_active = DB::table('permissions')
                              ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                              ->where([
                                  ['permissions.name', 'purchases-add'],
                                  ['role_id', $role->id] 
                              ])->first();
                      ?>
                      @if($add_permission_active)
                      <li><a href="{{url('purchases/purchase_by_csv')}}">{{trans('file.Import Purchase By CSV')}}</a></li>
                      @endif

                    </ul>
                  </li>
                @endif
                <!-- End Purcahse Nav -->
                  
                <!-- Start Indent Nav -->
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Indent</span>
                    </a>
                    <ul class="sidebar-submenu">

                      <li><a href="{{route('indent-list')}}">Add Indent</a></li>
                      <li><a href="{{route('indent-track')}}">Track Indent</a></li>
                      <li><a href="{{route('inward')}}">Inward</a></li>
                      <?php
                                $product_qty_alert_active = DB::table('permissions')
                                ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                                ->where([
                                ['permissions.name', 'product-qty-alert'],
                                ['role_id', $role->id]
                        ])->first();
                      ?>
                       @if($product_qty_alert_active)
                        <li><a href="{{route('report.qtyAlert')}}">{{trans('file.Product Quantity Alert')}}</a></li>
                      @endif

                    </ul>
                  </li>
                  <!-- End Indent Nav -->
                 
                 <!-- Start Reconciliation Nav -->
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title link-nav" href="{{route('reconciliation.index')}}">
                      <i data-feather="git-pull-request"> </i><span>Reconciliation</span>
                    </a>
                  </li>
                  <!-- End Reconciliation Nav -->

                  <!-- Start Repair Nav -->
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title link-nav" href="{{route('repair-and-maintenance')}}">
                      <i data-feather="git-pull-request"> </i><span>Repair</span>
                    </a>
                  </li>
                 <!-- End Repair Nav --> 

                 <!-- Start Expense Nav --> 
                 <?php
                      $index_permission_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'expenses-index'],
                              ['role_id', $role->id] 
                          ])->first();
                  ?>
                  @if($index_permission_active)
                 <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Expense</span>
                    </a>
                    <ul class="sidebar-submenu">
                      
                      <li><a href="{{route('expense_categories.index')}}">{{trans('file.Expense Category')}}</a></li>
                      
                      <li><a href="{{route('expenses.index')}}">{{trans('file.Expense List')}}</a></li>

                    </ul>
                  </li>
                  @endif
                 <!-- End Expense Nav -->   

                 <!-- Start Quotation Nav --> 
                
                 <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Quotation</span>
                    </a>
                    <ul class="sidebar-submenu">
                      
                      <li><a href="{{route('quotations.index')}}">{{trans('file.Quotation List')}}</a></li>
                      <!--<li><a href="{{route('supplier-response-list')}}">Supplier Response List</a></li>-->
                      
                      <?php
                          $add_permission_active = DB::table('permissions')
                              ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                              ->where([
                                  ['permissions.name', 'quotes-add'],
                                  ['role_id', $role->id] 
                              ])->first();
                      ?>
                      @if($add_permission_active)
                      <!--
                      <li><a href="{{route('quotations.create')}}">{{trans('file.Add Quotation')}}</a></li>
                      -->
                      @endif

                    </ul>
                  </li>
                
                 <!-- End Quotation Nav -->   

                 <!-- Start HRM Nav -->   
                  <?php
                      $department_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'department'],
                              ['role_id', $role->id] 
                          ])->first();

                      $index_employee_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'employees-index'],
                              ['role_id', $role->id] 
                          ])->first();

                      $attendance_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'attendance'],
                              ['role_id', $role->id] 
                          ])->first();

                      $payroll_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'payroll'],
                              ['role_id', $role->id] 
                          ])->first();
                  ?>

                  @if(Auth::user()->role_id != 5)
                  
            
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>HRM</span>
                    </a>
                    <ul class="sidebar-submenu">
                      @if($department_active)
                      <li id="dept-menu"><a href="{{route('departments.index')}}">{{trans('file.Department')}}</a></li>
                      @endif

                      @if($index_employee_active)
                      <li id="employee-menu"><a href="{{route('employees.index')}}">{{trans('file.Employee')}}</a></li>
                      @endif

                      @if($attendance_active)
                      <li id="attendance-menu"><a href="{{route('attendance.index')}}">{{trans('file.Attendance')}}</a></li>
                      @endif

                      <li id="holiday-menu"><a href="{{route('holidays.index')}}">{{trans('file.Holiday')}}</a></li>

                    </ul>
                  </li>
                  @endif
                 <!-- End HRM Nav -->  

                  <!-- Start People Nav --> 
                  <?php
                      $user_index_permission_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'users-index'],
                              ['role_id', $role->id] 
                          ])->first();

                      $customer_index_permission_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'customers-index'],
                              ['role_id', $role->id] 
                          ])->first();

                      $biller_index_permission_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'billers-index'],
                              ['role_id', $role->id] 
                          ])->first();

                      $supplier_index_permission_active = DB::table('permissions')
                          ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                          ->where([
                              ['permissions.name', 'suppliers-index'],
                              ['role_id', $role->id] 
                          ])->first();
                    ?>
                  @if($user_index_permission_active || $customer_index_permission_active || $biller_index_permission_active || $supplier_index_permission_active)
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>People</span>
                    </a>
                    <ul class="sidebar-submenu">
                      @if($user_index_permission_active)
                      <li><a href="{{route('user.index')}}">{{trans('file.User List')}}</a></li>
                      @endif
                    
                      @if($supplier_index_permission_active)
                      <li><a href="{{route('supplier.index')}}">{{trans('file.Supplier List')}}</a></li>
                      @endif
                    </ul>
                  </li>
                  @endif
                  <!-- End People Nav --> 


                  <!-- Start Report Nav --> 
                  <?php
                $profit_loss_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'profit-loss'],
                        ['role_id', $role->id] 
                ])->first();
                $best_seller_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'best-seller'],
                        ['role_id', $role->id]
                ])->first();
                $warehouse_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'warehouse-report'],
                        ['role_id', $role->id] 
                ])->first();
                $warehouse_stock_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'warehouse-stock-report'],
                        ['role_id', $role->id] 
                ])->first();
                $product_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'product-report'],
                        ['role_id', $role->id] 
                ])->first();
                $daily_sale_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'daily-sale'],
                        ['role_id', $role->id] 
                ])->first();
                $monthly_sale_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'monthly-sale'],
                        ['role_id', $role->id]
                ])->first();
                $daily_purchase_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'daily-purchase'],
                        ['role_id', $role->id]
                ])->first();
                $monthly_purchase_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'monthly-purchase'],
                        ['role_id', $role->id]
                ])->first();
                $purchase_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'purchase-report'],
                        ['role_id', $role->id]
                ])->first();
                $sale_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'sale-report'],
                        ['role_id', $role->id]
                ])->first();
                $sale_report_chart_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'sale-report-chart'],
                        ['role_id', $role->id]
                ])->first();
                $payment_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'payment-report'],
                        ['role_id', $role->id]
                ])->first();
                $product_expiry_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'product-expiry-report'],
                        ['role_id', $role->id]
                ])->first();
                $product_qty_alert_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'product-qty-alert'],
                        ['role_id', $role->id] 
                ])->first();
                $dso_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'dso-report'],
                        ['role_id', $role->id] 
                ])->first();
                $user_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'user-report'],
                        ['role_id', $role->id]
                ])->first();
                $customer_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'customer-report'],
                        ['role_id', $role->id]
                ])->first();
                $supplier_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'supplier-report'],
                        ['role_id', $role->id]
                ])->first();
                $due_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'due-report'],
                        ['role_id', $role->id]
                ])->first();
                $supplier_due_report_active = DB::table('permissions')
                        ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                        ->where([
                        ['permissions.name', 'supplier-due-report'],
                        ['role_id', $role->id]
                ])->first();
            ?>
            @if($profit_loss_active || $best_seller_active || $warehouse_report_active || $warehouse_stock_report_active || $product_report_active || $daily_sale_active || $monthly_sale_active || $daily_purchase_active || $monthly_purchase_active || $purchase_report_active || $sale_report_active || $sale_report_chart_active || $payment_report_active || $product_expiry_report_active || $product_qty_alert_active || $dso_report_active || $user_report_active || $customer_report_active || $supplier_report_active || $due_report_active || $supplier_due_report_active)
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>Reports</span>
                    </a>
                    <ul class="sidebar-submenu">
                     
                      @if($best_seller_active)
                      <li><a href="{{url('report/best_seller')}}">{{trans('file.Best Seller')}}</a></li>
                      @endif

                      @if($product_report_active)
                      <li>
                      {!! Form::open(['route' => 'report.product', 'method' => 'get', 'id' => 'product-report-form']) !!}
                      <input type="hidden" name="start_date" value="{{date('Y-m').'-'.'01'}}" />
                      <input type="hidden" name="end_date" value="{{date('Y-m-d')}}" />
                      <input type="hidden" name="warehouse_id" value="0" />
                      <a id="report-link" href="">{{trans('file.Product Report')}}</a>
                      {!! Form::close() !!}
                      </li>
                      @endif
                     
                      @if($monthly_purchase_active)
                      <li><a href="{{url('report/monthly_purchase/'.date('Y'))}}">{{trans('file.Monthly Purchase')}}</a></li>
                      @endif
                     
                      @if($payment_report_active)
                      <li>
                      {!! Form::open(['route' => 'report.paymentByDate', 'method' => 'post', 'id' => 'payment-report-form']) !!}
                      <input type="hidden" name="start_date" value="{{date('Y-m').'-'.'01'}}" />
                      <input type="hidden" name="end_date" value="{{date('Y-m-d')}}" />
                      <a id="payment-report-link" href="">{{trans('file.Payment Report')}}</a>
                      {!! Form::close() !!}
                      </li>
                      @endif

                      @if($purchase_report_active)
                      <li>
                      {!! Form::open(['route' => 'report.purchase', 'method' => 'post', 'id' => 'purchase-report-form']) !!}
                      <input type="hidden" name="start_date" value="{{date('Y-m').'-'.'01'}}" />
                      <input type="hidden" name="end_date" value="{{date('Y-m-d')}}" />
                      <input type="hidden" name="warehouse_id" value="0" />
                      <a id="purchase-report-link" href="">{{trans('file.Purchase Report')}}</a>
                      {!! Form::close() !!}
                      </li>
                      @endif

                     
                      @if($supplier_report_active)
                      <li><a id="supplier-report-link" href="">{{trans('file.Supplier Report')}}</a></li>
                      @endif

                      @if($supplier_due_report_active)
                      <li>
                      {!! Form::open(['route' => 'report.supplierDueByDate', 'method' => 'post', 'id' => 'supplier-due-report-form']) !!}
                      <input type="hidden" name="start_date" value="{{date('Y-m-d', strtotime('-1 year'))}}" />
                      <input type="hidden" name="end_date" value="{{date('Y-m-d')}}" />
                      <a id="supplier-due-report-link" href="">{{trans('file.Supplier Due Report')}}</a>
                      {!! Form::close() !!}
                      </li>
                      @endif

                      @if($warehouse_stock_report_active)
                      <li><a href="{{route('report.warehouseStock')}}">{{trans('file.Warehouse Stock Chart')}}</a></li>
                      @endif

                      @if($product_expiry_report_active)
                      <li><a href="{{route('report.productExpiry')}}">{{trans('file.Product Expiry Report')}}</a></li>
                      @endif

                      @if($user_report_active)
                      <li><a id="user-report-link" href="">{{trans('file.User Report')}}</a></li>
                      @endif
                  
                    </ul>
                  </li>
                  @endif
                  <!-- End Report Nav -->                



                   <!-- Start Setting Nav -->
                  <li class="sidebar-list">
                    <i class="fa fa-thumb-tack"></i>
                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                      <i data-feather="airplay"></i><span>settings</span>
                    </a>
                    <ul class="sidebar-submenu">

                    <?php
                      
                        $warehouse_permission_active = DB::table('permissions')
                            ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                            ->where([
                            ['permissions.name', 'warehouse'],
                            ['role_id', $role->id]
                        ])->first();

                        $unit_permission_active = DB::table('permissions')
                            ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                            ->where([
                            ['permissions.name', 'unit'],
                            ['role_id', $role->id]
                        ])->first();

                        $general_setting_permission_active = DB::table('permissions')
                            ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                            ->where([
                            ['permissions.name', 'general_setting'],
                            ['role_id', $role->id]
                        ])->first();

                        $backup_database_permission_active = DB::table('permissions')
                            ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                            ->where([
                            ['permissions.name', 'backup_database'],
                            ['role_id', $role->id]
                        ])->first();

                        $hrm_setting_permission_active = DB::table('permissions')
                            ->join('role_has_permissions', 'permissions.id', '=', 'role_has_permissions.permission_id')
                            ->where([
                            ['permissions.name', 'hrm_setting'],
                            ['role_id', $role->id]
                        ])->first();
                    ?>

                    @if($role->id <= 2)
                    <li><a href="{{route('role.index')}}">{{trans('file.Role Permission')}}</a></li>
                    @endif
                   
                    @if($warehouse_permission_active)
                    <li><a href="{{route('warehouse.index')}}">{{trans('file.Warehouse')}}</a></li>
                    @endif
                    
                    <!-- productdepaertment_permission_active -->
                    <li><a href="{{route('productdepartments.index')}}">Product Departments</a></li>
                   <!-- endif -->
                  
                   
                    @if($unit_permission_active)
                    <li><a href="{{route('unit.index')}}">{{trans('file.Unit')}}</a></li>
                    @endif
                  
                  
                    <li><a href="{{route('user.profile', ['id' => Auth::id()])}}">{{trans('file.User Profile')}}</a></li>
                  
                    
                    @if($backup_database_permission_active)
                    <li><a href="{{route('setting.backup')}}">{{trans('file.Backup Database')}}</a></li>
                    @endif

                    @if($general_setting_permission_active)
                    <li><a href="{{route('setting.general')}}">{{trans('file.General Setting')}}</a></li>
                    @endif
                    
                    @if($hrm_setting_permission_active)
                    <li><a href="{{route('setting.hrm')}}"> {{trans('file.HRM Setting')}}</a></li>
                    @endif

                    </ul>
                  </li>
                     <!-- End Setting Nav -->   

                  
                </ul>
              </div>
              <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
            </nav>
          </div>
        </div>
        <!-- Page Sidebar Ends-->
        @yield('content')
        <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 p-0 footer-left">
                <p class="mb-0">Copyright © {{$general_setting->site_title}} | {{trans('file.Developed')}} </p>
              </div>
              <div class="col-md-6 p-0 footer-right">
                <p class="mb-0">{{trans('file.By')}} {{$general_setting->developed_by}}<i class="fa fa-heart font-danger"></i></p>
              </div>
           
            </div>
          </div>
        </footer>
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
    <script src="{{asset('assets/js/scrollbar/simplebar.js')}}"></script>
    <script src="{{asset('assets/js/scrollbar/custom.js')}}"></script>
    <!-- Sidebar jquery-->
    <script src="{{asset('assets/js/config.js')}}"></script>
    <script src="{{asset('assets/js/sidebar-menu.js')}}"></script>
    <script src="{{asset('assets/js/typeahead/handlebars.js')}}"></script>
    <script src="{{asset('assets/js/typeahead/typeahead.bundle.js')}}"></script>
    <script src="{{asset('assets/js/typeahead/typeahead.custom.js')}}"></script>
    <script src="{{asset('assets/js/typeahead-search/handlebars.js')}}"></script>
    <script src="{{asset('assets/js/typeahead-search/typeahead-custom.js')}}"></script>
    <!-- Template js-->
    <script src="{{asset('assets/js/script.js')}}"></script>
    <script src="{{asset('assets/js/theme-customizer/customizer.js')}}">  </script>

    <!-- datatable js -->
    <script src="{{asset('assets/js/datatable/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/jszip.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/pdfmake.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/vfs_fonts.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.autoFill.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.select.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/buttons.html5.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/buttons.print.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.keyTable.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.colReorder.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.rowReorder.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/dataTables.scroller.min.js')}}"></script>
    <script src="{{asset('assets/js/datatable/datatable-extension/custom.js')}}"></script>

    <script src="{{asset('assets/js/notify/bootstrap-notify.min.js')}}"></script>
    <script src="{{asset('assets/js/notify/notify-script.js')}}"></script>

    <script src="{{asset('assets/js/select2/select2.full.min.js')}}"></script>
    <script src="{{asset('assets/js/select2/select2-custom.js')}}"></script>
    <!-- login js-->
    @yield('js_section');
    <script>
      $("a#report-link").click(function(e){
        e.preventDefault();
        $("#product-report-form").submit();
      });
    </script>
  </body>

</html>