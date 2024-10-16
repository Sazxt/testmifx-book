<?php

namespace App\Http\Middleware;

use App\User;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // Ambil token dari request
        $token = $request->bearerToken();

        // Periksa apakah token ada
        if ($token) {
            // Cari pengguna berdasarkan token
            $user = User::where('api_token', $token)->first();

            // Periksa apakah pengguna ditemukan
            if ($user) {
                // Set pengguna yang terautentikasi dalam request
                Auth::login($user);
            } else {
                return response()->json(['message' => 'Unauthorized'], 401);
            }
        }

        // Periksa apakah pengguna sudah login (terautentikasi)
        if (!Auth::check()) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        // Cek apakah pengguna adalah admin
        if (!Auth::user()->is_admin) {
            return response()->json(['message' => 'Forbidden. Admin access required.'], 403);
        }

        // Lanjutkan request
        return $next($request);
    }
}
