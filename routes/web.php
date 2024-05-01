<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryConTroller;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['register'=>false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Admin dashboard

Route::group(['prefix'=> 'admin/','middleware'=>'auth'],function(){
    Route::get('/',[AdminController::class,'admin'])->name('admin');

    //Banner Section
    Route::resource('/banner',BannerController::class);
    Route::post('banner_status', [BannerController::class,'bannerStatus'])->name('banner.status');

    //Category Section
    Route::resource('/category',CategoryConTroller::class);
    Route::post('category_status', [CategoryConTroller::class,'categoryStatus'])->name('category.status');

    //Brand Section
    Route::resource('/brand',BrandController::class);
    Route::post('brand_status', [BrandController::class,'brandStatus'])->name('brand.status');

});