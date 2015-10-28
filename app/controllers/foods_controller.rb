class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    user = current_user
    @food = user.foods.new(food_params)
    if @food.save
      respond_to do |format|
        format.html { redirect_to root }
        format.js
      end
    else
      # Add alert for missing text here
      flash[:alert] = 'Please supply text for the new food.'
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :calories)
  end
end
