<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'user_id';
    public $timestamps = false;
    protected $fillable = array('name');

    public function relationships()
    {
        return $this->belongsTo('Relationship');
    }

}
