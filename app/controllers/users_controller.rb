class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def admin?
    role == 'admin'
  end
end
