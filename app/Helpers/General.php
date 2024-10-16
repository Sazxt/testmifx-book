<?php

// @TODO implement

if (!function_exists('usd_to_rupiah_format')) {
    function usd_to_rupiah_format($amount)
    {
        $rate = 14000;
        $amountInRupiah = $rate * floatval($amount);

        return 'Rp ' . number_format($amountInRupiah, 2, ',', '.');
    }
}
