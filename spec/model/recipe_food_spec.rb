require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Ambrose',
      email: 'ambrisexyz@gmail.com',
      password: '123456'
    ),

            @food = Food.create(
              user_id: 1,
              name: 'Rice',
              measurement_unit: '10kg',
              price: 100,
              quantity: 10
            ),
            @recipe = Recipe.create(
              name: 'Rice recipe',
              preparation_time: '10s',
              cooking_time: '20s',
              description: 'Cook rice',
              public: true,
              user_id: 1
            ),
            @recipe_food = RecipeFood.create(
              quantity: 10,
              food_id: 3,
              recipe_id: 1
            )
  end

  it '@recipefood created should be valid' do
    expect(@recipe_food).to be_valid
  end

  it '@quantity must be an integer' do
    expect(@recipe_food.quantity).to eq(10)
  end
  it '@food_id created should be valid' do
    expect(@recipe_food.food_id).to eq(3)
  end
  it '@recipe_id must be an integer greater than or equal zero.' do
    expect(@recipe_food.recipe_id).to eq(1)
  end
end
