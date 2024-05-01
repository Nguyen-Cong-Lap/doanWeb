<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \DB::table('users')->insert([
        
            //Admin
            [
                'full_name'=>'TKL Admin',
                'username'=>'Admin',
                'email'=>'admin@gmail.com',
                'password'=>\Hash::make('1111'),
                'role'=>'admin',
                'status'=>'active',
            ],

            //vendor
            [
                'full_name'=>'TKL Vendor',
                'username'=>'Vendor',
                'email'=>'vendor@gmail.com',
                'password'=>\Hash::make('1111'),
                'role'=>'vendor',
                'status'=>'active',
            ],

            //customer
            [
                'full_name'=>'TKL Customer',
                'username'=>'Customer',
                'email'=>'customer@gmail.com',
                'password'=>\Hash::make('1111'),
                'role'=>'customer',
                'status'=>'active',
            ],
        ]);
    }
}
