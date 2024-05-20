<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProProceso>
 */
class ProProcesoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $prefijos = [
            ['ABG', 'Abogado'],
            ['ADMR', 'Administrador'],
            ['ARQ', 'Arquitecto'],
            ['ANL', 'Analista'],
            ['COORD', 'Coordinador'],
            ['ING', 'Ingeniero']
        ];

        $seleccion = fake()->unique()->randomElement($prefijos);

        return [
            'pro_prefijo' => $seleccion[0],
            'pro_nombre'  => $seleccion[1]
        ];
    }
}
