<!DOCTYPE html>

<html lang="en">



<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">

    <meta name="keywords" content="">

    <meta name="author" content="">

    <link rel="icon" href="{{url('public/logo', $general_setting->site_logo)}}" type="image/x-icon">

    <link rel="shortcut icon" href="" type="image/x-icon">

    <title>{{env('APP_NAME')}}</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link

        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"

        rel="stylesheet">











    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/bootstrap.css')}}">

    <!-- App css-->

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">

    <link id="color" rel="stylesheet" href="{{asset('assets/css/color-1.css')}}" media="screen">

    <!-- Responsive css-->

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/responsive.css')}}">



    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/select2.css')}}">



    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">

</head>



<body>

    <!-- tap on top starts-->

    <div class="tap-top"><i data-feather="chevrons-up"></i></div>

    <!-- tap on tap ends-->



    <!-- page-wrapper Start-->

    <div class="page-wrapper compact-wrapper" id="pageWrapper">

        <!-- Page Body Start-->







        <div class="container m-t-50">

            <div class="col-md-12 m-t-50">

                  <div class="text-center">

                    <img src="" alt="">

                  </div>

                  <div class="text-center p-b-50">

                    <h1 class="f-w-700">{{$supplier_data->name}}</h1>

                  </div>

            </div>

            <div class="col-md-12">

                <div class="card b-t-success border-bottom-light">

                    @if ($quotation_ref_data->status == "1")

                    <div class="card-body text-center">

                        <div class=""><img src="{{asset('assets/images/thank-you-checkmark.gif')}}" width="20%" alt=""></div>

                        <div class="pt-5 pb-5"><h4>Thank you for your submissions</h4></div>

                    </div>



                    @else

                    <form action="{{route('supplier-view-quotation-list',['slug' => $quotation_ref_data->ref_no])}}" method="post">

                        @csrf

                        <input type="hidden" name="quotation_id" value="{{$quotation_ref_data->quotation_id}}" />

                        <div class="card-body">



                            <div class="container add-product">

                                <div class="row">

                                    @php

                                    $sl = 1;

                                    @endphp

                                    <div class="table-responsive">
                                      <table id="quotation-table" class="table">
                                        <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Product Quantity</th>
                                                <th>Unit</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          @foreach($quotation_product_id as $product_data)
                                            <tr class="quotationDiv" data-id="{{$product_data->product_id}}">
                                              <td>
                                                <div class="mb-3">

                                                  <input class="form-control" type="text" name="product_name[{{$product_data->product_id}}][]" value="{{$product_data->product->name}}" readonly="readonly">

                                                </div>
                                              </td>
                                              <td>
                                                <div class="mb-3">

                                                  <input class="form-control" type="text" name="product_qty[{{$product_data->product_id}}][]" value="{{$product_data->qty}}" readonly="readonly">

                                                </div>
                                              </td>
                                              <td>
                                                <div class="mb-3">

                                                  <select class="js-example-basic-single form-select digits" name="unit[{{$product_data->product_id}}]" required>

                                                    <option value="" disabled selected>Choose...</option>

                                                    @foreach ($unit_list as $unit)

                                                    <option value="{{$unit->id}}">{{$unit->unit_name}}</option>

                                                    @endforeach

                                                  </select>

                                                </div>
                                              </td>
                                            </tr>
                                          @endforeach
                                        </tbody>
                                      </table>
                                    </div>

                                    {{-- @foreach($quotation_product_id as $product_data)

                                    <div class="col-md-12 product-info mb-4">

                                        <div class="product-group">

                                            <div class="row">

                                              <div class="col-sm-6">

                                                <div class="mb-3">

                                                  <label class="form-label">Product Name</label>

                                                  <input class="form-control" type="text" name="product_name[{{$product_data->product_id}}][]" value="{{$product_data->product->name}}" readonly="readonly">

                                                </div>

                                              </div>

                                              <div class="col-sm-3">

                                                <div class="mb-3">

                                                  <label class="form-label">Product Quantity</label>

                                                  <input class="form-control" type="text" name="product_qty[{{$product_data->product_id}}][]" value="{{$product_data->qty}}" readonly="readonly">

                                                </div>

                                              </div>

                                              <div class="col-sm-3">

                                                <div class="mb-3">

                                                  <label class="form-label">Unit</label>

                                                  <select class="js-example-basic-single form-select digits" name="unit[{{$product_data->product_id}}]" required>

                                                    <option value="" disabled selected>Choose...</option>

                                                    @foreach ($unit_list as $unit)

                                                    <option value="{{$unit->id}}">{{$unit->unit_name}}</option>

                                                    @endforeach

                                                </select>

                                                </div>

                                              </div>

                                            </div>

                                            <div class="row" id="repeatercontainer{{$product_data->product_id}}">

                                              <div class="col-sm-4">

                                                <div class="mb-3">

                                                  <label class="form-label">Brand Name</label>

                                                  <input class="form-control brand_name" type="text" name="brand[{{$product_data->product_id}}][]" required>

                                                </div>

                                              </div>

                                              <div class="col-sm-4">

                                                <div class="mb-3">

                                                  <label class="form-label">Price</label>

                                                  <input class="form-control" type="number" name="price[{{$product_data->product_id}}][]" required>

                                                </div>

                                              </div>

                                              <div class="col-sm-4">

                                                <div class="mb-3 text-end mt-4">

                                                    <button class="btn btn-info addrepeterform" data-pid="{{$product_data->product_id}}" id="" type="button">Add</button>

                                                </div>

                                              </div>

                                            </div>

                                        </div>

                                    </div>

                                    @endforeach --}}

                                    <div class="col-md-12 product-info mt-3">
                                        <div class="product-group">
                                            <div class="row">

                                              <div class="col-sm-4">

                                                <div class="mb-3">

                                                  <label class="form-label">Brand Name</label>

                                                  <input class="form-control get_brand_name" type="text" name="brand_name" required>

                                                </div>

                                              </div>

                                              <div class="col-sm-4">

                                                <div class="mb-3 text-end mt-4">

                                                  <button class="btn btn-info addbrand" id="" type="button">Add Brand</button>

                                                </div>

                                              </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 product-info mt-3">

                                        <div class="product-group">

                                            <div class="row">

                                              <div class="col-sm-6">

                                                <div class="mb-3">

                                                  <label class="form-label">Delivery Time</label>

                                                  <input class="form-control" type="text" name="delivery_time" required>

                                                </div>

                                              </div>

                                              <div class="col-sm-3">

                                                <div class="mb-3">

                                                  <label class="form-label">Delivery Packaging</label>

                                                  <input class="form-control" type="text" name="delivery_packaging" required>

                                                </div>

                                              </div>

                                              <div class="col-sm-3">

                                                <div class="mb-3">

                                                  <label class="form-label">Delivery Charges</label>

                                                  <input class="form-control" type="number" name="delivery_charges" required>

                                                </div>

                                              </div>

                                            </div>



                                        </div>

                                    </div>

                                </div>

                            </div>



                        </div>



                        <div class="card-footer text-end">



                            <button class="btn btn-outline-primary" type="submit" data-original-title="btn btn-outline-danger-2x" title="">Submit</button>



                        </div>

                    </form>



                    @endif



                </div>

            </div>



        </div>



    </div>

    <!-- latest jquery-->

    <script src="{{asset('assets/js/jquery-3.6.0.min.js')}}"></script>

    <!-- Bootstrap js-->

    <script src="{{asset('assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>





    <!-- Sidebar jquery-->



    <script src="{{asset('assets/js/config.js')}}"></script>



    <script src="{{asset('assets/js/script.js')}}"></script>



    <script src="{{asset('assets/js/select2/select2.full.min.js')}}"></script>

    <script src="{{asset('assets/js/select2/select2-custom.js')}}"></script>



    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>

    <!-- login js-->

    @if(session()->has('message'))

    <script>

        Swal.fire({

        position: 'top-center',

        icon: 'success',

        title: '{{ session()->get('message') }}',

        showConfirmButton: false,

        timer: 1500

        })

    </script>

    @endif



    <script>

        $(document).ready(function(){

          var i = 0;

          $('.addbrand').click(function() {
            i++;
            $('.brand_error').remove();
            var brand_name = $('.get_brand_name').val();
            if(brand_name) {
              $("#quotation-table thead tr").append("<th class='brandDiv_"+i+"'>"+brand_name+"</th>");
              $('.quotationDiv').each(function(j, obj) {
                  var product_id = $(this).data('id');
                  $(this).append('<td class="brandDiv_'+i+'"><div class="mb-3"><input class="brand_name" type="hidden" name="brand['+product_id+'][]" value="'+brand_name+'"><input class="form-control input-primary" type="number" name="price['+product_id+'][]" required></div></td>');
              });
            } else {
              $('.get_brand_name').after("<p class='brand_error text-danger'>Please enter brand name</p>");
            }
          });


          var i = 1;

          $('.addrepeterform').click(function(){

            var pid = $(this).data("pid");

            var bname = $(this).parent().parent().parent().find(".brand_name").val();



            i++;

            $('#repeatercontainer'+pid).append(`

            <div class="row" id="appendrowdata`+i+`">



                <div class="col-md-4 mb-3 ">

                    <div class="mb-3">

                        <label class="form-label">Brand Name</label>

                        <input class="form-control" type="text" name="brand[`+pid+`][]" value="`+bname+`" required>

                    </div>

                </div>



                <div class="col-md-4 mb-3 ">

                    <div class="mb-3">

                        <label class="form-label">Price</label>

                        <input class="form-control input-primary" type="number" name="price[`+pid+`][]" required>

                    </div>

                </div>



                <div class="col-md-4 mb-3 text-end ">

                    <div style="margin-top: 30px;">

                        <a class="btn btn-danger remove-item-rept" id="`+i+`" href="javascript:void(0)" style="font-size: 12px;padding: 4px 6px 4px 6px !important;border-radius: 4px !important;">Remove</a>

                    </div>

                </div>



            </div>`);

          });



          $(document).on('click','.remove-item-rept',function(){



            var row_id = $(this).attr("id");

            $('#appendrowdata'+row_id+'').remove();

          });

        })

      </script>

</body>



</html>

