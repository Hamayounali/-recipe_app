class ShoppingListsController < ApplicationController
  before_action :authenticate_user!

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
    end