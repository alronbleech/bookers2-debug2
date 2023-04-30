class SearchesController < ApplicationController

  def search
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      render :search_result
    else
      @books = Book.looks(params[:search], params[:word])
      render :search_result
    end
  end

  def search_result
    @users = User.looks(params[:search], params[:word])
    @books = Book.looks(params[:search], params[:word])
  end

end
