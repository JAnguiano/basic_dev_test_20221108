<?php

use App\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        // Product 1
        for ($i = 1; $i < 6; $i++) {
            $product = new Product();
            $product->name = "Product ".$i;
            $product->description = $faker->paragraph;
            $product->amount = $faker->numberBetween(0,10);
            $product->quantity = $faker->numberBetween(0,100);
            $product->status = true;
            $product->save();
        }
    }
}
