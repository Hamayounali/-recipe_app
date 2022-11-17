# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
end

  root to: 'recipes#index'

  # get 'recipe_food/quantity:integer'
  resources :foods
  resources :recipes
  resources :public_recipes
  resources :shopping_list
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
