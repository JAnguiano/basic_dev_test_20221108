<?php

namespace App\Http\Controllers;

use App\User;
use App\Sale;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SaleController extends Controller
{
    /**
     * Get all sales
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function getSales(Request $request)
    {
        if($request->user_id != null){
            $sales = Sale::where('user_id',$request->user_id)->get();
            $users = User::all();
            return view('welcome', [
                'sales'           => $sales,
                'users'           => $users,
            ]);
        }
        else{
            $sales = Sale::all();
            $users = User::all();
            return view('welcome', [
                'sales'           => $sales,
                'users'           => $users,
            ]);
        }      
    }
}
