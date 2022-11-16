class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  validates :name, presence: true, length: { maximum: 250 }
  validates :cooking_time, presence: { message: 'Cooking time must not be empty' }
  validates :description, presence: { message: 'Description must not be empty' }
end
