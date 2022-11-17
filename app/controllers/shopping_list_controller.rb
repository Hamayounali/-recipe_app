ShoppingListsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_shopping_list, only: %i[ show edit update destroy ]
    before_action :set_user, only: %i[ index show new edit create update destroy ]
    before_action :set_food, only: %i[ index show new edit create update destroy ]
    before_action :set_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_recipe_food, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_recipe_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_food, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_recipe_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_recipe_food_food, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_recipe_recipe_recipe, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_food_food_food, only: %i[ index show new edit create update destroy ]
    before_action :set_shopping_list_recipe_recipe_recipe, only: %i[ index show new edit create update destroy ]

    # GET /shopping_lists or /shopping_lists.json
    def index
        @shopping_lists = ShoppingList.all
        end

        # GET /shopping_lists/1 or /shopping_lists/1.json
        def show
        end

        # GET /shopping_lists/new
        def new
            @shopping_list = ShoppingList.new
        end

        # GET /shopping_lists/1/edit

        