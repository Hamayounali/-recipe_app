# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :recipe_foods, dependent: :destroy, foreign_key: 'food_id'
end
