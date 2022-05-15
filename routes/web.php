<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\DropdownController;
use App\Http\Controllers\CountriesController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/
Route::get('dashboard', [CustomAuthController::class, 'dashboard']); 
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom'); 
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom'); 
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');

Route::get('applications', [CustomAuthController::class, 'applications']);

Route::post('signingup', [StudentController::class, 'SigningUp'])->name('signingup');
Route::get('uploadcert', [StudentController::class, 'uploadcert'])->name('uploadcert');

Route::post('stores', [FileController::class, 'stores'])->name('stores');
Route::get('programmes', [FileController::class, 'programmes'])->name('programmes');


Route::get('country', [CountriesController::class, 'index']);
//Route::get('index', [CountriesController::class, 'index'])->name('index');
