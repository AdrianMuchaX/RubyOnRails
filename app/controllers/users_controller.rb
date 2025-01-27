class UsersController < ApplicationController
  def index
    @users = User.all
    @projects = Project.all

    # Set @user only if needed for the view (e.g., for adding projects)
    @user = User.first  # Or dynamically set based on some other logic
    @project = Project.new
  end





end
