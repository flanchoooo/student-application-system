@extends('headers')
@section('content')


<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
<link rel="stylesheet" href="{{ URL::asset('../css/css.css') }}" />
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	
<body>

<form action="{{ route('stores') }}" method="POST" enctype="multipart/form-data">

            @csrf

  

            <div class="mb-3">

                <label class="form-label" for="inputFile">File:</label>

                <input 

                    type="file" 

                    name="file" 

                    id="inputFile"

                    class="form-control @error('file') is-invalid @enderror">

  

                @error('file')

                    <span class="text-danger">{{ $message }}</span>

                @enderror

            </div>

   

            <div class="mb-3">

                <button type="submit" class="btn btn-success">Upload</button>

            </div>

       

        </form>


</body>
</html>
@endsection
