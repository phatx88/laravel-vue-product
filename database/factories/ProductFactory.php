<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->productName,
            'description' => $this->faker->safeColorName,
            'quantity' => $this->faker->numberBetween(1, 99),
            'price' => $this->faker->numberBetween(1, 99),
        ];
    }
}
