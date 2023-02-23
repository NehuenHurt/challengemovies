<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Actor;
use App\Models\Director;

class MovieController extends Controller
{
    
     /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getAll(Request $request)
    {   
        $query = Movie::with("director","actors");

        if ($request->filterfor) {
        $query = $query->where('genere', $request->filterfor);
        }

        if ($this == $request->orderby) {
        $query = $query->orderBy('id', $request->orderby);
        }
        $results = $query->get();
        return $results;
    }
}
