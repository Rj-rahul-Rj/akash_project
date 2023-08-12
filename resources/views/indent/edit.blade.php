@extends('layout.master')
@section('content')
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h3> Edit Indent</h3>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/') }}"><i data-feather="home"></i></a></li>
                            <li class="breadcrumb-item">Indent</li>
                            <li class="breadcrumb-item active">Edit Indent</li>
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
                                <form method="post" action="">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="product-group">

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Product Name <span
                                                                    class="text-danger">*</span></label>
                                                            <select class="form-control single-select2-product  @error('pname') is-invalid @enderror"
                                                                name="pname" id="select_product_id"
                                                                title="Select Product...">
                                                                <option disabled selected>Select Product...</option>
                                                                @foreach ($product as $sp)
                                                                    <option value="{{$sp->id}}" <?php if($indent->pname==$sp->id){ echo 'selected'; } ?>>{{$sp->name }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                            @error('pname')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Quantity <span
                                                                    class="text-danger">*</span></strong>
                                                            </label>
                                                            <input type="text" name="qty" class="form-control  @error('qty') is-invalid @enderror"
                                                                value="{{$indent->l_qty_order}}">
                                                                @error('qty')
                                                                <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Expected Date<span
                                                                    class="text-danger">*</span></label>
                                                                    <input type="date" name="exp_date" class="form-control @error('exp_date') is-invalid @enderror" value="{{$indent->exp_date}}" >
                                                                    @error('exp_date')
                                                                <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Date <span
                                                                    class="text-danger">*</span></label>
                                                                    <input type="text" name="date" class=" form-control" value="{{ date('d-m-y ') }}" readonly>
                                                        </div>
                                                    </div>
                                                </div>


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
