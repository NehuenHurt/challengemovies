<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Episode;
use App\Models\TvShow;

class TvShowController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getEpisodeForTvShowAndEpisode(Request $request)
    {
        $result = Episode::with('season',"director","tv_show.actors")->where('id_episode', $request->idepisode)->where('id_tv_show', $request->idtvShow)->get();
        return $result;
    }

   
}
