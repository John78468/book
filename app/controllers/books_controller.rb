class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :page_count, :published_at)
  end
end
