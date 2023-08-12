<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Product;
class QuotationItem extends Model
{
    use HasFactory;

    public function product(){
     return   $this->belongsTo('\App\Product','product_id','id');
    }

}
