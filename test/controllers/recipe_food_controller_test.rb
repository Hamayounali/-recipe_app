# frozen_string_literal: true

require 'test_helper'

class RecipeFoodControllerTest < ActionDispatch::IntegrationTest
  test 'should get quantity:integer' do
    get recipe_food_quantity: integer_url
    assert_response :success
  end
end
