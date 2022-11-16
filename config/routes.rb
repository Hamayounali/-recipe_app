# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'recipe_food/quantity:integer'
  root 'recipes#index'
  resources :foods, only: %i[index create destroy]
  resources :recipes, only: %i[index create show destroy]
  resources :public_recipes, only: %i[index destroy]
  resources :shopping_list, only: %i[index create destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
