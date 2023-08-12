@extends('layout.master')
@section('content')
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h3> Add Indent</h3>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/') }}"><i data-feather="home"></i></a></li>
                            <li class="breadcrumb-item">Indent</li>
                            <li class="breadcrumb-item active">Add Indent</li>
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
                            <div class="row">
                                <div class="col-md-8">
                                    <p>The field labels marked with <span class="text-danger">*</span> are required input fields.</p>
                                </div>
                                <div class="col-md-4 text-end">
                                    <a class="btn btn-primary" href="{{route('indent-list')}}">Indent List</a>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                            <div class="product-info">
                                <form method="post" action="{{ route('indent-create') }}">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-12 repeaterlist">
                                            <div class="product-group " data-index="0">

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Product Name <span
                                                                    class="text-danger">*</span></label>
                                                            <select class="form-control single-select2-product select_product_id "
                                                                name="pname[]" id="select_product_id"
                                                                title="Select Product...">
                                                                <option value="" disabled selected>Select Product...</option>
                                                                @foreach ($product as $p)
                                                                    <option value="{{ $p->id }}">{{ $p->name }}
                                                                    </option>
                                                                @endforeach
                                                            </select>

                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Quantity <span
                                                                    class="text-danger">*</span></strong>
                                                            </label>
                                                            <input type="text" name="qty[]" class="form-control  "
                                                                value="{{old('qty')}}">

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Expected Date<span
                                                                    class="text-danger">*</span></label>
                                                                    <input type="date" name="exp_date[]" class="form-control" value="{{old('exp_date')}}" >

                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Date <span
                                                                    class="text-danger">*</span></label>
                                                                    <input type="text" name="date[]" class=" form-control" value="{{ date('d-m-y ') }}" readonly>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="form-group" id="last-append-income-date0">
                                                        </div>
                                                      </div>
                                                    </div>
                                                     <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="form-group" id="last-append-product-price0">
                                                        </div>
                                                      </div>
                                                    </div>
                                                     <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <div class="form-group" id="last-append-qty-order0">
                                                        </div>
                                                      </div>
                                                    </div>
                                                </div>

                                                <button class="btn btn-info" type="button" role="button" id="addnewrepeater">Add</button>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="mt-4">
                                        <div class="row">
                                            <div class="col-sm-12 text-end">
                                                <input type="submit" value="{{ trans('file.submit') }}"
                                                    class="btn btn-primary me-3">
                                            </div>
                                        </div>
                                    </div>
                                </form>
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
var products = <?=json_encode($product)?>;

var index =0;
$(document).on("click","#addnewrepeater",function(){
index++;
var list = "<select name='pname[]' class='form-control select_product_id single-select2-product"+index+"'>"
list += '<option value="" disabled selected>Select Product...</option>';
    for(var i=0;i<products.length;i++){
    list += "<option value='"+products[i]['id']+"'>"+products[i]['name']+"</option>";
    }
list += "</select>";


$(".repeaterlist").append('<div class="product-group" data-index="'+index+'"><div class="row"><div class="col-sm-6"><div class="mb-3"><label class="form-label">Product Name<span class="text-danger">*</span></label>'+list+'</div></div><div class="col-sm-6"><div class="mb-3"><label class="form-label">Quantity<span class="text-danger">*</span></label><input type="text" name="qty[]" class="form-control" value=""></div></div></div><div class="row"><div class="col-sm-6"><div class="mb-3"><label class="form-label">Expected Date<span class="text-danger">*</span></label><input type="date" name="exp_date[]" class="form-control" value=""></div></div><div class="col-sm-6"><div class="mb-3"><label class="form-label">Date<span class="text-danger">*</span></label><input type="text" name="date[]" class="form-control" value="<?=date("d-m-y")?>" readonly="readonly"></div></div></div><div class="row"><div class="col-md-6"><div class="mb-3"><div class="form-group" id="last-append-income-date'+index+'"></div></div></div><div class="col-md-6"><div class="mb-3"><div class="form-group" id="last-append-product-price'+index+'"></div></div></div><div class="col-md-6"><div class="mb-3"><div class="form-group" id="last-append-qty-order'+index+'"></div></div></div></div></div>');

$(".single-select2-product"+index).select2();
})

    $(document).on("change",".select_product_id",function(){

      var key=$(this).val();
var iindex = $(this).parent().parent().parent().parent().attr("data-index");

console.log(iindex);
      $.ajax({
      url:"last-indent-details",
      type:'POST',
      data:{_token:'<?=csrf_token()?>',key:key},
      success:function(res){

         $("#last-append-product-price"+iindex).html("");
          $("#last-append-income-date"+iindex).html("");
          $("#last-append-qty-order"+iindex).html("");

          if(res){
              var l_price="<label><strong>Last Price</strong></label> <input type='text' class='form-control' name='product_price' value='"+(res.l_price ==null ? 0 : res.l_price)+"' readonly>";
          var l_income_date="<label><strong>Last Income Date</strong></label> <input type='text' class='form-control' name='product_price' value='"+(res.l_income_date ==null ? 0 :res.l_income_date)+"' readonly>";
          var l_qty_order=" <label><strong>Last Quantity Order</strong></label> <input type='text' class='form-control' name='product_price' value='"+(res.l_qty_order ==null ? 0 :res.l_qty_order)+"' readonly>";

          $("#last-append-product-price"+iindex).append(l_price);
          $("#last-append-income-date"+iindex).append(l_income_date);
          $("#last-append-qty-order"+iindex).append(l_qty_order);

          $("#last-append-product-price"+iindex).show();
              $("#last-append-income-date"+iindex).show();
              $("#last-append-qty-order"+iindex).show();

          }else{
              $("#last-append-product-price"+iindex).hide();
              $("#last-append-income-date"+iindex).hide();
              $("#last-append-qty-order"+iindex).hide();

          }

        //   var l_price="<label><strong>Last Price</strong></label> <input type='text' class='form-control' name='product_price' value='"+res.l_price+"' readonly>";
        //   var l_income_date="<label><strong>Last Income Date</strong></label> <input type='text' class='form-control' name='product_price' value='"+res.l_income_date+"' readonly>";
        //   var l_qty_order=" <label><strong>Last Quantity Order</strong></label> <input type='text' class='form-control' name='product_price' value='"+res.l_qty_order+"' readonly>";

        //   $("#last-append-product-price").append(l_price);
        //   $("#last-append-income-date").append(l_income_date);
        //   $("#last-append-qty-order").append(l_qty_order);



        }
        })

    //   $.ajax({
    //   url:'/indent-product-price',
    //   type:'POST',
    //   data:{_token:'<?=csrf_token()?>',key:key},
    //   success:function(res){

    //     var testhtml1="<input type='text' class='form-control' name='product_price' value='"+res.price+"' readonly>";
    //       	$("#append-product-name").append(testhtml1);
    //     $(".apped-hide-aj").toggle();

    //     }
    //     })

      });
    </script>

    @if (Session::has('flash_message'))
        <script>
            $.notify({
                title: 'Oops...',
                message: '{!! Session::get('flash_message') !!}'
            }, {
                type: 'danger',
                allow_dismiss: true,
                newest_on_top: false,
                mouse_over: false,
                showProgressbar: false,
                spacing: 10,
                timer: 2000,
                placement: {
                    from: 'bottom',
                    align: 'right'
                },
                offset: {
                    x: 30,
                    y: 30
                },
                delay: 1000,
                z_index: 10000,
                animate: {
                    enter: 'animated bounce',
                    exit: 'animated bounce'
                }
            });
        </script>
    @endif
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

@stop
