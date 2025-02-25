class AuthorsController < ApplicationController
  def index
    authors = Author.all
    render json: authors
  end

  def create
    author = Author.create!(name: params[:name])
    render json: author
  end

  def show
    author = Author.find(params[:id])
    render json: author
  end
end
