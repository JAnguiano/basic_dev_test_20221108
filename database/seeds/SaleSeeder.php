<?php

use App\Product;
use App\Sale;
use Illuminate\Database\Seeder;

class SaleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        // Sales
        for ($i = 1; $i < 6; $i++) {
            $product_test_id = $faker->numberBetween(1,5);
            $product = Product::where('id',$product_test_id)->first();
            $quantity_fake = $faker->numberBetween(0,$product->quantity);

            $sale = new Sale();
            $sale->quantity = $quantity_fake;
            $sale->cost = ($quantity_fake*$product->amount);
            $sale->user_id = $faker->numberBetween(1,5);
            $sale->product_id = $product_test_id;
            $sale->save();
        }
    }
}
