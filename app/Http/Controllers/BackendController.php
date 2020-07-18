<?php

namespace App\Http\Controllers;
use Auth;
class BackendController extends Controller {
	public function index() {
		return view('backend.index');
	}
}
