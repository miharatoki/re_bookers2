class UsersController < ApplicationController
  def create
    
  end

  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:name,:introduction)
  end
end
