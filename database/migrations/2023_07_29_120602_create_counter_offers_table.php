<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCounterOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('counter_offers', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->integer('sender_id');
            $table->integer('receiver_id');
            $table->integer('parent_id');
            $table->string('brand');
            $table->string('actual_price');
            $table->integer('actual_price');
            $table->integer('counter_offer_by_admin');
            $table->integer('counter_offer_by_seller');
            $table->enum('status',['0','1','2'])->default('0')->comment('0=create,1=counter_offers,3=complete');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('counter_offers');
    }
}
