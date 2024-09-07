class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.new
    @user=User.find(params[:id])
    
    @books=@user.books
  end

  def edit
  end
end
