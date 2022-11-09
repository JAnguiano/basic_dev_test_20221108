<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    /**
     * Relationship Belongs to User
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    /**
     * Relationship Belongs to Product
     */
    public function product()
    {
        return $this->belongsTo('App\Product');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [
    ];
}
