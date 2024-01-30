class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update]

  def show
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
  @book = Book.new(book_params)

  if @book.save
    redirect_to books_path
  else
    render :new
  end

end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :page_count, :published_at)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
