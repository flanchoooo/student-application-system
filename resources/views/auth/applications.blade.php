@extends('dashboard')
@section('content')


<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
<link rel="stylesheet" href="{{ URL::asset('../css/css.css') }}" />
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	
<body>

<form method="post" action="{{ route('signingup') }}" style="max-width:500px;margin:auto">
@csrf
  <blockquote>
    <blockquote>
      <h2>STUDENT SIGNUP</h2>
    </blockquote>
  </blockquote>
  <table width="569" border="0" align="center">
    <tbody>

      <tr>
        <th width="95" scope="row">&nbsp;</th>
		  
		  
        <td width="464">    <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input name="txtname" type="text" required="required" class="input-field" placeholder="First Name" value="">
  </div></td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td><div class="input-container">
    <i class="fa fa-user icon"></i>
    <input name="txtsurname" type="text" required="required" class="input-field" placeholder="Surname" value="">
  </div></td>
      </tr>
      <tr>
        <th height="39" scope="row">&nbsp;</th>
        <td><div class="input-container1">
          			
			<select name="txtgender" required="reqiured">  
				
            <option value=""><strong>--- SELECT GENDER---</strong></option>  
  				
				<option value="Male">Male</option>
				<option value="Female">Female</option>
		  
			</select>
        </div></td>
      </tr>
		
		
      <tr>
        <th scope="row">&nbsp;</th>
        <td><div class="input-container">
    <i class="fa fa-user icon"></i>
			<textarea name="txtaddress" required="required" id="address"  placeholder="Address"></textarea>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td><div class="input-container">
    <i class="fa fa-user icon"></i>
    <input name="txtLocation" type="text" required="required" class="input-field" placeholder="Country of Origin" value="">
  </div>
		  
		  
		  
		  </td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td><div class="input-container">
    <i class="fa fa-user icon"></i>
    <input name="txtdob" type="date" required="required" class="input-field" id="dob" placeholder="Select DOB"  value="">
  </div></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td><button type="submit" class="btn">Proceed</button></td>
      </tr>
    </tbody>
  </table>
 

</form>

</body>
</html>
@endsection
