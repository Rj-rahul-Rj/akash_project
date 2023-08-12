<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuotationResponseItem extends Model
{
    use HasFactory;
    public function product(){
        return $this->belongsTo('App\Product');
       }

       public function qrf(){
        return $this->belongsTo('App\QuotationResponse','quotation_response_id');
       }
}
