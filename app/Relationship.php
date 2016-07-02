<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Relationship extends Model
{
    protected $table = 'relationships';
    protected $primaryKey = 'relationship_id';
    public $timestamps = false;

//    protected $fillable = array('name');

    public function users()
    {
        return $this->hasMany('User');
    }

    public function tags()
    {
        return $this->hasMany('Tag');
    }

}
