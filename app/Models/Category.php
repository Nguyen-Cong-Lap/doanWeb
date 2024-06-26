<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable = ['title','slug','summary','photo','is_parent','parent_id','status'];

    public static function shiftChild($cat_id){
        return Category::whereIn('id',$cat_id)->update(['parent_id'=>1]);
    }

}

