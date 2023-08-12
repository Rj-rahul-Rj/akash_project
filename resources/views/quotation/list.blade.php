@extends('layout.master')
@section('content')
<div class="page-body">

<div class="container-fluid">

    <div class="page-title">

        <div class="row">

            <div class="col-sm-6">

                <h3>Admin</h3>

            </div>

            <div class="col-sm-6">

                <ol class="breadcrumb">

                    <li class="breadcrumb-item"><a href="{{ url('/') }}"><i data-feather="home"></i></a></li>

                    <li class="breadcrumb-item">Quotation</li>

                    <li class="breadcrumb-item active">Admin Response List</li>

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



                </div>

                <form action="" method="post">

                    @csrf

                    <input type="hidden" name="quotation_id" value="" />

                    <div class="card-body">

                        <div class="dt-ext table-responsive theme-scrollbar">

                            <table class="display quotation-list" id="export-button">

                                <thead>

                                    <tr>
                                        <th></th>
                                        <th>S.No</th>

                                        <th>Product Name1</th>

                                        <th>Brand</th>

                                        <th>Actual Price</th>

                                        <th>Counter Offer By Admin</th>

                                        <th>Counter Offer By Seller</th>

                                        <th>Status</th>
                                        <th>Action </th>

                                        <!-- @if(!empty($brandData))

                                            @foreach($brandData as $value)

                                            <th>Brand ({{$value['brand']}}) </th>

                                            @endforeach

                                        @endif -->

                                        <!-- <th>Delivery Time</th>

                                        <th>Delivery Packaging</th>

                                        <th>Delivery Charges</th>

                                        <th>Unit</th> -->
                                       
                                    

                                    </tr>

                                </thead>

                                <tbody>
                            
                                    @php

                                        $sl = 1;



                                    @endphp
                                    @foreach ($record as $qr)

                                                <tr>
                                                    <td><input type="checkbox" name="checkbox[]" id="chkid[]" onclick="checkbox_value()"  value ="{{$qr['id']}}"></td>
                                                    <td>{{ $sl++ }}</td>
                                                    <td>{{$qr['product_name']}}</td>
                                                    <td>{{$qr['brand']}}</td>
                                                    <td>{{$qr['actual_price']}}</td>
                                                    <td>{{$qr['counter_offer_by_seller']!=0?'pending for Admin response':$qr['counter_offer_by_admin']}}</td>
                                                    <td>{{$qr['counter_offer_by_seller']==0 ?'pending for Seller response':$qr['counter_offer_by_seller']}}</td>
                                                    <td>{{$qr['status']==0 ?'open':'closed'}} </td>
                                                    <td><button onclick="checkbox_value({{$qr['id']}})" ><a href ="javascript:void(0)"><li class="action" user="menu"  ><i data-feather="edit"></i></li></a></button></td>
                                                </tr>
                                            @endforeach
                                   
                                </tbody>



                            </table>

                        </div>


                        <!-- <div class="btn-group float-right recodeData" style="float: right;margin-top: 10px;">      
                            <button type="button" class="btn btn-primary buttons-html5 recodeButton">
                                <span>Requote</span>
                            </button>
                        </div> -->

                        <div class="btn-group float-right recodeData" style="float: right;margin-top: 10px;">      
                            <button type="button" class="btn btn-primary buttons-html5 recodeButton" id="declineid" onclick="declines()" disabled=true>
                                <span>Decline</span>
                            </button>
                        </div>

                        <div class="btn-group float-right recodeData" style="float: right;margin-top: 10px;">      
                            <button type="button" class="btn btn-primary buttons-html5 recodeButton" id="counterid"  onclick="counter()" disabled=true>
                                <span>Counter offer</span>
                            </button>
                        </div>

                        <div class="btn-group float-right recodeData" style="float: right;margin-top: 10px;">      
                            <button type="button" class="btn btn-primary buttons-html5 recodeButton" id="acceptid"  onclick="accept()" disabled=true>
                                <span>Accept</span>
                            </button>
                        </div>



                        <div class="btn-group float-right submitData d-none" style="float: right;margin-top: 10px;">
                            <button type="submit" class="btn btn-primary buttons-html5 submitButton">
                                <span>Submit</span>
                            </button>
                        </div>
                    </div>

                </form>

            </div>

        </div>
        

    </div>
 
</div>

</div>

<!-- Modal Decline -->
<div>
        <div class="modal fade" id="declineModal" tabindex="-1" aria-labelledby="declineModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="declineModalLabel">Quotation Decline</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Are you sure , you want decline this ?
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button type="button" class="btn btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>
     </div>
    <div>
        <!-- Modal Accept -->
        <div class="modal fade" id="acceptModal" tabindex="-1" aria-labelledby="acceptModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="acceptModalLabel">Quotation Accept</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Thanks you !
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">ok</button>
                        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
      
        <!-- Modal Counter Offer -->
    <div>
      <div class="modal fade" id="counterModal" tabindex="-1" aria-labelledby="counterModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="width:162% !important">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="counterModalLabel">Quotation Counter Offer</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        
                        <form action="/counteroffer" method="post">
                            @csrf
                         <div id="counterOffer" class="modalcls"></div>
                        
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@stop
@section('js_section')


<script>
        function counter(){
                $("#counterModal").modal("show");
        }
        function accept(){
          
          $("#acceptModal").modal("show");
        }
         function declines(){
                $("#declineModal").modal("show");
        }

    function checkbox_value(id){
        console.log(id)
        // var val = [];
        // $(':checkbox:checked').each(function(i){
        //   val[i] = $(this).val();

        // });
        // console.log(val);
        // if(val.length==0){
        //     acceptid.disabled = true;
        //     counterid.disabled = true;
        //     declineid.disabled = true;
        //     localStorage.setItem('product_id', '')
        //     $('#counterOffer div').remove();
        // }else{
        //     acceptid.disabled = false;
        //     counterid.disabled = false;
        //     declineid.disabled = false;
        //     localStorage.setItem('product_id',val[0]);
        //     let id = val;
        //     console.log('/getproductItem/'+id)
            $.ajax({
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             },
            type: "POST",
            url: '/getCounterProductItem',
            data: id,
            success: function(response)
            {
                var jsonData = JSON.parse(response);
                <?php $data = '<script>document.write()</script>'?> 
                localStorage.setItem('data',jsonData);
                console.log(jsonData.length);
              $('#counterOffer div').remove();
            for (var i =0; i<jsonData.length;i++){
                $('#counterOffer').append("<div><div><h6>"+jsonData[i].product_name+"</h6></div><input type='hidden' name='categories[]' value = "+jsonData[i].id+" readonly></div><br/><span>Brand</span><input type='text' name='categories[][]' value = "+jsonData[i].brand+"  readonly><span>Actual price</span><input type='text' name='categories[][]' value = "+jsonData[i].actual_price+"  readonly><br/><span>Counter by admin</span><input type='text' name='categories[][]' value = "+jsonData[i].counter_offer_by_admin+"  readonly>");
                $('#counterOffer').append("<div><span>Price</span><input type='text' name='categories[][][]' value = "+jsonData[i].actual_price+" readonly><span>Counter offer</span><input type='number' name='categories1["+jsonData[i].id+"]["+jsonData[i]['option'][j]['brand']+"][]' value =0><br/></div>");
                
                
               
            }
                // user is logged in successfully in the back-end 
                // let's redirect 
        //         if (jsonData.success == "1")
        //         {
        //             location.href = 'my_profile.php';
        //         }
        //         else
        //         {
        //             alert('Invalid Credentials!');
        //         }
           }
       });
            // alert("id="+localStorage.getItem('data'))
            // $("#counterModal").modal("show");    
        // }
}
</script>