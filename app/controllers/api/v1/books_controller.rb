class Api::V1::BooksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @books = current_user.books
    render json: @books, status: :ok
  end

  def create
    @book = current_user.books.new(book_params)
    if @book.save
      render json: @book, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    @book = Book.where(id: params[:id]).first
    if @book.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :category_id)
  end
end

