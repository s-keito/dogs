class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end
  
  def create
   @dog = Dog.new(book_params)
    @dog.user_id = current_user.id
    if @dog.save
      flash[:notice] = "successfully"
      redirect_to dog_path(@dog.id)
    else
      @dogs = Dog.all
      render :index
    end
  end

  def index
    @dogs = Dog.all
  end

  def edit
  end

  def show
  end
  
  
  private
  def dog_params
    params.requier(:dog).permit(:title, :body)
  end
end
