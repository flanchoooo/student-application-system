<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class students extends Model
{
    use HasFactory;


    protected $fillable = [
        'S_name',
        'S_surname',
        'S_gender',
        'S_Location',
        'S_dob',
        'DateOB',
        'S_address',
        
    ];
}

