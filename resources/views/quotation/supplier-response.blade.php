@extends('layout.master')


@section('content')

    <div class="page-body">

        <div class="container-fluid">

            <div class="page-title">

                <div class="row">

                    <div class="col-sm-6">

                        <h3> {{ $supplier->supplier->name }}</h3>

                    </div>

                    <div class="col-sm-6">

                        <ol class="breadcrumb">

                            <li class="breadcrumb-item"><a href="{{ url('/') }}"><i data-feather="home"></i></a></li>

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



                        </div>

                        <form action="{{route('admin-supplier-view-quotation-list',['slug' => $supplier->ref_no])}}" method="post">

                            @csrf

                            <input type="hidden" name="quotation_id" value="{{$supplier->quotation_id}}" />

                            <div class="card-body">

                                <div class="dt-ext table-responsive theme-scrollbar">

                                    <table class="display quotation-list" id="export-button">

                                        <thead>

                                            <tr>
                                                <th></th>
                                                <th>Sl.No</th>

                                                <th>Product Name1</th>

                                                <th>Quantity</th>

                                                {{-- <th>Brand & Price</th> --}}

                                                @if(!empty($brandData))

                                                    @foreach($brandData as $value)

                                                    <th>Brand ({{$value['brand']}}) </th>

                                                    @endforeach

                                                @endif

                                                <th>Delivery Time</th>

                                                <th>Delivery Packaging</th>

                                                <th>Delivery Charges</th>

                                                <th>Unit</th>
                                               
                                            

                                            </tr>

                                        </thead>

                                        <tbody>
                                    
                                            @php

                                                $sl = 1;



                                            @endphp

                                            @foreach ($quotation_response as $qr)

                                                <tr>
                                                    <td><input type="checkbox" name="checkbox[]" id="chkid[]" onclick="checkbox_value()"  value ="{{$qr->product_id}}"></td>
                                                    <td>{{ $sl++ }}</td>

                                                    <td>{{ $qr->product->name }}</td>

                                                    <td>

                                                        @php

                                                            $qitem = $qr->quotation_id;

                                                            $b_p = json_decode($qr->brand, true);

                                                            $qty = App\QuotationItem::where('quotation_id', $qr->quotation_id)->first();



                                                        @endphp

                                                        <span class="badge badge-light text-dark">{{ $qty->qty }}</span>





                                                    </td>

                                                    {{-- <td>
                                                        @if(!empty($b_p))

                                                        @foreach($b_p as $value)

                                                        <strong>Brand = </strong> {{$value['brand']}} |

                                                        <strong>Price = </strong>{{$value['price']}}

                                                            @endforeach

                                                        @endif
                                                    </td> --}}

                                                    
                                                        @if(!empty($b_p))

                                                            @foreach($b_p as $value)
                                                          
                                                            <td>
                                                                
                                                                <input type="hidden" name="brand[{{$qr->product_id}}][]" value="{{$value['brand']}}" />
                                                                <input name="price[{{$qr->product_id}}][]" type="hidden" value="{{$value['price']}}" />
                                                                <input class="readonlyClass" name="new_price[{{$qr->product_id}}][]" type="text" value="{{$value['price']}}" readonly required />
                                                            </td>

                                                            @endforeach

                                                        @endif

                                                    <td>{{ $qr->delivery_time }}</td>

                                                    <td>{{ $qr->delivery_packaging }}</td>

                                                    <td>{{ $qr->delivery_charges }}</td>

                                                    <td>{{ $qr->unit->unit_name }}</td>
                                                

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

    <script type="text/javascript">

        // $('.recodeButton').click(function(){
        //     $(".readonlyClass").removeAttr('readonly');
        //     $(".submitData").removeClass("d-none");
        //     $(".recodeData").addClass("d-none");
        // });

        
        

        


    </script>
<script>
        function counter(){
                $("#counterModal").modal("show");
        }
</script>



    <script>
        function accept(){
          
          $("#acceptModal").modal("show");
  }
         function declines(){
                $("#declineModal").modal("show");
        }

        </script>
    
<script>
//     $('#chkid').change(function() {
// 	alert('Checkbox checked!');
// });
function checkbox_value(){
        var val = [];
        $(':checkbox:checked').each(function(i){
          val[i] = $(this).val();

        });
        console.log(val);
        if(val.length==0){
            acceptid.disabled = true;
            counterid.disabled = true;
            declineid.disabled = true;
            localStorage.setItem('product_id', '')
            $('#counterOffer div').remove();
        }else{
            acceptid.disabled = false;
            counterid.disabled = false;
            declineid.disabled = false;
            localStorage.setItem('product_id',val[0]);
            let id = val;
            console.log('/getproductItem/'+id)
            $.ajax({
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             },
            type: "POST",
            url: '/getproductItem',
            data: {val},
            success: function(response)
            {
                var jsonData = JSON.parse(response);
                <?php $data = '<script>document.write()</script>'?> 
                localStorage.setItem('data',jsonData);
                console.log(jsonData.length);
                // $('#counterOffer').append("<h6>"+jsonData[0].name+"</h6>");
              console.log(jsonData[0]['option'][0]['brand'])
              $('#counterOffer div').remove();
            for (var i =0; i<jsonData.length;i++){
                $('#counterOffer').append("<div><div><h6>"+jsonData[i].name+"</h6></div><input type='hidden' name='categories[]' value = "+jsonData[i].id+" readonly></div><br/>");
                for(var j = 0; j<jsonData[i]['option'].length;j++){
                    $('#counterOffer').append("<div><span>Brand</span><input type='text' name='categories[][]' value = "+jsonData[i]['option'][j]['brand']+"  readonly><span>Price</span><input type='text' name='categories[][][]' value = "+jsonData[i]['option'][j]['price']+" readonly><span>Counter offer</span><input type='number' name='categories1["+jsonData[i].id+"]["+jsonData[i]['option'][j]['brand']+"][]' value =0><br/></div>");
                }
                
               
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
        }
}


    function getvalue(){
        alert('function')
    }

</script>



@stop

