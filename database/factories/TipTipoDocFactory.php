<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Validation\Rules\Unique;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\TipTipoDoc>
 */
class TipTipoDocFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $prefijos = [
            ['INF', 'Informe'],
            ['CON', 'Contrato'],
            ['CERT', 'Certificaciones'],
            ['CONST', 'Constancia'],
            ['RPRT', 'Reporte'],
            ['IDNT', 'Identificacion']
        ];

        $seleccion = fake()->unique()->randomElement($prefijos);

        return [
            'tip_prefijo' => $seleccion[0],
            'tip_nombre' => $seleccion[1]
        ];
    }
}
