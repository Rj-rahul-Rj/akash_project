@extends('layout.master')
@section('content')
<div class="page-body">
          <div class="container-fluid">
            <div class="page-title">
              <div class="row">
                <div class="col-sm-6">
                  <h3> Supplier Response List</h3>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i data-feather="home"></i></a></li>
                    <li class="breadcrumb-item">Quotation</li>
                    <li class="breadcrumb-item active">Supplier Response List</li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="row project-cards">
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header pb-0">
                    <form id="filterForm">
                        <input type="hidden" name="id" value="{{request('id')}}" />
                        <select class="form-control form-select select_product" name="product">
                            <option value="0">All Product</option>
                            @foreach ($qitems as $item )
                            <option value="{{$item->product->id}}"  @if(request('product')==$item->product->id) selected @endif>{{$item->product->name}}</option>
                            @endforeach

                        </select>
                    </form>
                  </div>
                  <div class="card-body">
                    <div class="dt-ext table-responsive theme-scrollbar">
                      <table class="display quotation-list" id="export-button">
                        <thead>
                        <tr>
                            <th>Sl.No</th>
                            <th>Supplier Name</th>
                            <th>Product Name</th>
                            <th>Qty</th>
                            <th>Brand</th>
                            <th>Price</th>
                        </tr>
                        </thead>
                        <tbody>
                          @php
                          $sl = 1

                          @endphp
                          @foreach($qritems as $qr)
                          <tr>
                            <td>{{$sl++}}</td>
                            <td>
                                @php
                                    $supplier_id = App\QuotationEmail::where('ref_no',$qr->qrf->ref_no)->first();
                                    $supplier_name = App\Supplier::find($supplier_id->supplier_id);
                                    $quantity = App\QuotationItem::where('quotation_id',$supplier_id->quotation_id)->where("product_id",$qr->product_id)->first();

                                    $b_p = json_decode($qr->brand, true);

                                @endphp

                                {{$supplier_name->name}}
                            </td>
                            <td>{{$qr->product->name}}</td>
                            <td>
                                {{$quantity->qty}}
                            </td>
                            <td>
                                {{$qr->brand}}

                            </td>
                            <td>
                                {{$qr->price}}

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


        </div>
@stop
@section('js_section')

<script>

$(document).on("change",".select_product",function(){
    $("form#filterForm").submit();
})

</script>

@stop
