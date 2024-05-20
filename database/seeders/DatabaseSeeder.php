<?php

namespace Database\Seeders;

use App\Models\ProProceso;
use App\Models\TipTipoDoc;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        ProProceso::factory(5)->create();
        TipTipoDoc::factory(5)->create();

        // User::factory(10)->create();
        User::factory()->create([
            'email'    => 'test@admin.com',
            'password' => bcrypt('1234')
        ]);
    }
}
