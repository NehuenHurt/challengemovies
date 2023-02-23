<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\MovieController;
use App\Http\Controllers\Api\EpisodeController;

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    //auth
    Route::post('login', [\App\Http\Controllers\Api\AuthController::class, 'login'])->name('login');
    Route::post('register', [\App\Http\Controllers\Api\AuthController::class, 'register'])->name('register');
    Route::post('logout', [\App\Http\Controllers\Api\AuthController::class, 'logout'])->name('logout');
    Route::post('refresh', [\App\Http\Controllers\Api\AuthController::class, 'refresh'])->name('refresh');
    Route::post('me', [\App\Http\Controllers\Api\AuthController::class, 'me'])->name('me');
});

Route::group(['middleware' => ['jwt.verify']], function() {
    //movie
Route::post('movie', [\App\Http\Controllers\Api\MovieController::class, 'getAll'])->name("getAll");
//episode
Route::post('episode', [\App\Http\Controllers\Api\TvShowController::class, 'getEpisodeForTvShowAndEpisode'])->name("getEpisodeForTvShowAndEpisode");
});

