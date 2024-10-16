<?php

namespace App\Http\Middleware;

use App\User;
use Closure;
use Illuminate\Http\Request;

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

        // // Periksa apakah token ada
        if ($token) {
            $user = User::where('api_token', $token)->first();
            if ($user)
            {
                return $next($request);
            }
        }

        // // Cari pengguna berdasarkan token
        $user = User::where('api_token', $token)->first();

      // Periksa apakah pengguna sudah login (terautentikasi)
        if (!$request->user()) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        // Cek apakah pengguna adalah admin
        if (!$request->user()->is_admin) {
            return response()->json(['message' => 'Forbidden. Admin access required.'], 403);
        }


        // Lanjutkan request
        return $next($request);
    }
}
