class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have create successfully"
      redirect_to book_path(@book)
    else
      @books = Book.all
      @user = current_user
      render :index
    end

  end


  def index
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def show
    @book = Book.new
    @B = Book.find(params[:id])
    @user = @B.user
    
  end

  def edit
    @book = Book.find(params[:id])
    unless @book.user.id == current_user.id
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      flash[:noti]= "You have updated book successfully."
      redirect_to book_path(@book.id)
    else
      render :edit
    end



  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
