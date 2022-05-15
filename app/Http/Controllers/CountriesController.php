<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Country;
use App\Models\City;

class CountriesController extends Controller
{
    public function index(){
    	//$countries = Country::all()->pluck('country_name','country_id');
    //	return view('programme',compact('countries'));
   
        return view('auth.index');
    }
    
    
   
}