class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.new
  end

  def edit
  end
end
