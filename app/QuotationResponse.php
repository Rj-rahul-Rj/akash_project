<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class QuotationResponse extends Model
{
    use HasFactory,SoftDeletes;

    public function product(){
        return $this->belongsTo('App\Product');
       }
        public function unit(){
        return $this->belongsTo('App\Unit');
       }
}
