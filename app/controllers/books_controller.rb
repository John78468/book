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
  @book = Book.new(book_params)

  if @book.save
    redirect_to books_path
  else
    render :new
  end

end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

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
end
