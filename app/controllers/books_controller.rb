class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirecto_to　'root' 
    redirect_to movies_path(anchor: 'some-id')
    end
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end