@extends('layout.master')
@section('content')
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h3> Add Quotation</h3>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/') }}"><i data-feather="home"></i></a></li>
                            <li class="breadcrumb-item">Quotation</li>
                            <li class="breadcrumb-item active">Add Quotation</li>
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
                                {!! Form::open(['route' => 'quotations.store', 'method' => 'post', 'files' => true, 'id' => 'quotation-form']) !!}
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="product-group">

                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Supplier <span
                                                                class="text-danger">*</span></label>
                                                        <select name="supplier_id[]"
                                                            class="js-example-basic-multiple form-select @error('supplier_id') is-invalid @enderror"
                                                            multiple="multiple" id="supplier_id">
                                                            <option value="" disable>Select Supplier...</option>
                                                            @foreach ($lims_supplier_list as $supplier)
                                                                <option value="{{ $supplier->id }}"  @if (old('supplier_id')) @if (in_array($supplier->id, old('supplier_id'))) selected @endif
                                                                    @endif>
                                                                    {{ $supplier->name . ' (' . $supplier->company_name . ')' }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        @error('supplier_id')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Warehouse <span
                                                                class="text-danger">*</span></label>
                                                        <select id="warehouse_id" name="warehouse_id"
                                                            class="single-select2-warehouse form-select @error('warehouse_id') is-invalid @enderror"
                                                            data-live-search="true" title="Select warehouse...">
                                                            <option value="" disable>Select warehouse...</option>
                                                            @foreach ($lims_warehouse_list as $warehouse)
                                                                <option value="{{ $warehouse->id }}" @if (old('warehouse_id') == $warehouse->id) selected @endif>{{ $warehouse->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        @error('warehouse_id')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Select Product <span
                                                                class="text-danger">*</span></label>
                                                        <select id="_product_id" name="product_code_name"
                                                            class="single-select2-product form-select @error('product_code_name') is-invalid @enderror"
                                                            data-live-search="true" title="Select Product...">
                                                            <option value="" disable>Select Product...</option>
                                                            @foreach ($lims_product_list as $product)
                                                                <option value="{{ $product->id }}">{{ $product->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        @error('product_code_name')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>

                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-12">

                                        <div class="product-group">
                                            <h5>{{ trans('file.Order Table') }} <span class="text-danger">*</span></h5>
                                            <table id="myTable" class="table table-hover order-list">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Product Code</th>
                                                        <th>Quantity</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="product_data_append">

                                                </tbody>

                                            </table>
                                            @error('qty')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <div class="product-group">

                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label" for="form-label">Note</label>
                                                        <textarea class="form-control" name="note" rows="3" spellcheck="false"></textarea>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <div class="row">
                                        <div class="col-sm-12 text-end">
                                            <input type="submit" value="submit" class="btn btn-primary">
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
        var user_verified = <?php echo json_encode(env('USER_VERIFIED')); ?>;

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).on('change', '#_product_id', function() {
            var key = $('#_product_id option:selected').val();

            $.ajax({
                url: 'quotation-product-search-list',
                type: 'POST',
                data: {
                    _token: '<?= csrf_token() ?>',
                    key: key
                },
                success: function(res) {

                    $('#product_data_append').prepend(`
            <tr id="appendtrdata`+res.id+`">
                <th>` + res.name + `</th>
                <th>` + res.code + `</th>
                <th> <input type="text" class="@error('qty') is-invalid @enderror" name="qty[` + res.id + `]" /></th>
                <th> <a class="btn btn-danger remove-item-rept" id="`+res.id+`" href="javascript:void(0)" style="font-size: 12px;padding: 4px 6px 4px 6px !important;border-radius: 4px !important;">Delete</a></th>
            </tr>
            `);

            $(document).on('click','.remove-item-rept',function(){
                var row_id = $(this).attr("id");
                $('#appendtrdata'+row_id+'').remove();
                });


                }

            })

            //   $('.result').append("<br>Select Text = " + text);
        });
    </script>

    @if (Session::has('flash_message'))
        <script>
            $.notify({
                title: 'Oops...',
                message: '{!! Session::get('
                        flash_message ') !!}'
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

@stop
