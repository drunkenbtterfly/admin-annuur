<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Donasi;
use Illuminate\Http\Request;

class DonasiController extends Controller
{
    /**
     * Menampilkan semua donasi.
     */
    public function index()
    {
        return response()->json(Donasi::all());
    }

    /**
     * Menampilkan satu donasi berdasarkan ID.
     */
    public function show($id)
    {
        $donasi = Donasi::find($id);

        if (!$donasi) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }

        return response()->json($donasi);
    }

    
}