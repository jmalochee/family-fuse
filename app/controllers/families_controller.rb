class FamiliesController < ApplicationController
  def index
    @families = Families.all
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    binding.pry

    if @family.save
      flash[:notice] = "Family added successfully"
      redirect_to family_path(@family)
    elsif
      flash[:alert] = "no dice, try again."
      render :new
    end
  end

  def show
    @family = Family.find(params[:id])
  end

  private

  def family_params
    params.require(:family).permit(:surname, :matriarch, :patriarch, :city, :state, :anniversary)
  end
end
