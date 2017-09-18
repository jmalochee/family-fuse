class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)

    if @family.save
      flash[:notice] = "Family added successfully"
      redirect_to family_path(@family)
    elsif
      flash[:alert] = "family could not be created"
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
