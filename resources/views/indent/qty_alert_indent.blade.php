@extends('layout.main')
 @section('content') 
 @if($errors->has('name'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('name') }}</div>
@endif
@if($errors->has('image'))
<div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('image') }}</div>
@endif
@if(session()->has('message'))
  <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('message') }}</div>
@endif
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif
<section>
  <div class="container-fluid">
    <div class="card">
      <div class="card-header mt-2">
        <h3 class="text-center">Indent Add</h3>
      </div>
      <form method="post" action="" >
        @csrf
        <div class="row ml-1 mt-2">
          
        <div class="col-md-6">
            <div class="form-group">
              <label><strong>product Name</strong> <span class="text-danger">*</span></label>
              <input type="text" name="qty" class=" form-control" value="{{$apd->name}}" readonly>
          </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
              <label><strong>Quantity</strong> <span class="text-danger">*</span></label>
              <input type="text" name="qty" class=" form-control" value="{{$apd->alert_quantity}}" readonly>
          </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
              <label><strong>Expected Date</strong> <span class="text-danger">*</span></label>
              <input type="date" name="exp_date" class=" form-control" >
          </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
              <label><strong>Product Code </strong> <span class="text-danger">*</span> </label>
              <input type="text" name="serial_no" class="form-control" value="{{$apd->code}}" readonly>
          </div>
        </div>
       
        <div class="col-md-6">
            <div class="form-group">
              <label><strong>Date</strong></label>
              <input type="text" name="date" class=" form-control" value="{{ date('d-m-y ') }}" readonly>
          </div>
        </div>

         <div class="col-md-12 mt-3 pr-3">
            <div class="form-group text-right">
              <button class="btn btn-primary" id="filter-btn" type="submit">Submit</button>
            </div>
          </div>
      </form>
    </div>
  </div>
</section> 
@endsection 
@push('scripts') 
<script>
function a_gen_code() {
let r = (Math.random() + 5).toString(36).substring(2);
  document.getElementById("gen_cide_id").value = r;
}
</script>
@endpush