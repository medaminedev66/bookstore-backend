class Api::V1::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books, status: :ok
  end

  def create
    @book = Book.new(book_params)
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

