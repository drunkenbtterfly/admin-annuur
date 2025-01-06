<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Pengurus;
use Illuminate\Http\Request;

class PengurusController extends Controller
{
    // Menampilkan semua data pengurus
    public function index()
    {
        $penguruses = Pengurus::all()->map(function ($pengurus) {
            return [
                'id' => $pengurus->id,
                'nama' => $pengurus->nama,
                'jabatan' => $pengurus->jabatan,
                'foto_url' => $pengurus->foto ? asset('storage/' . $pengurus->foto) : null,
            ];
        });

        return response()->json([
            'success' => true,
            'message' => 'Data pengurus berhasil diambil.',
            'data' => $penguruses
        ], 200);
    }

    // Menampilkan data pengurus berdasarkan ID
    public function show($id)
    {
        $pengurus = Pengurus::find($id);

        if (!$pengurus) {
            return response()->json([
                'success' => false,
                'message' => 'Data pengurus tidak ditemukan.',
            ], 404);
        }

        $data = [
            'id' => $pengurus->id,
            'nama' => $pengurus->nama,
            'jabatan' => $pengurus->jabatan,
            'foto_url' => $pengurus->foto ? asset('storage/' . $pengurus->foto) : null,
        ];

        return response()->json([
            'success' => true,
            'message' => 'Data pengurus berhasil ditemukan.',
            'data' => $data
        ], 200);
    }
}
