<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App\Models\Students;

use Illuminate\Support\Facades\Auth;







class StudentController extends Controller
{
    public function SigningUp(Request $request)
    {

 $request->validate([
            'txtname'=>'required',
            'txtsurname'=>'required',
            'txtgender'=>'required',
            'txtLocation'=>'required',
            'txtdob'=>'required',
            'txtaddress'=>'required'
           


        ]);
    $student = new Students([
            'S_name' => $request->get('txtname'),
            'S_surname' => $request->get('txtsurname'),
            'S_gender' => $request->get('txtgender'),
            'S_Location' => $request->get('txtLocation'),
            'S_dob' => $request->get('txtdob'),
            'S_address' => $request->get('txtaddress')
       
      ]);
      
     $student ->save();
        //return redirect('uploadcert')->with('Record saved!');

        return redirect()->intended('uploadcert');
    }

    public function uploadcert()
    {
        return view('auth.uploadcert');


    }


    


}

