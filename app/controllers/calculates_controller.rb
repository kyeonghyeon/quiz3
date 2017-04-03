class CalculatesController < ApplicationController
  def new
    @calculate = Calculate.new
    @calculates = Calculate.all
  end

  def create
    calculate = Calculate.new(calculate_params)
    calculate.save
    redirect_to :new_calculate
  end

  private
  def calculate_params
    params.require(:calculate).permit(:a, :operator, :b)
  end
end
