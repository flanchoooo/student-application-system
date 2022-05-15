<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App\Models\FileUpLoads;
use App\Models\Country;
use Illuminate\Support\Facades\Auth;


class FileController extends Controller
{
      
         public function programmes()
        {
            return view('auth.programmes');
    
        }
     

        public function stores(Request $request)
        {
             
        $request->validate([
            //validate file type 

             'file' => 'required|mimes:jpeg,png,jpg,pdf|max:20048'
            ]);
            //assigning filaname and file path to variables
            $name = $request->file('file')->getClientOriginalName();   
            $path = $request->file('file')->store('public/uploads');
           
            //Move the file to the public uploads directory
            $request->file->move(public_path('uploads'), $name);
           
            //insert the path and filename into the database 
            //Auth::user()->id = $userid

            $Upfiles = new FileUpLoads([
              
              //  'userid' => $userid,
                'Filename' => $name,
                'Filepath' => $path
           
          ]);
          
         $Upfiles ->save();
     
            return redirect('programmes');
             }
    

}


