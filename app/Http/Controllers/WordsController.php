<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Words;

class WordsController extends Controller
{
	/**
	 * Get the word of the day.
	 *
	 * @param $date string optional
	 * @return Response
	 */
    public function index($date = null)
    {
    	// we should query to try to pull the word
    	$word = Words::byDay($date)->first();

    	// return the response
    	return response()->json($word);
    }
}
