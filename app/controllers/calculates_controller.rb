class CalculatesController < ApplicationController
  def new
    @calculates = Calculate.all
    @calculate = Calculate.new()
  end
  def create
    calculate = Calculate.new(post_params)
    calculate.save
    redirect_to :back
  end
  private
  def post_params
    params.require(:calculate).permit(:a, :operator, :b)
  end
end