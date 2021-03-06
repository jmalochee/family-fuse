class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
    @member.contacts.build

  end

  def create
    @member = Member.new(member_params)
    # @email = Email.new(member_params)
    # @member.emails << @email

    if @member.save
      flash[:notice] = "Member added successfully"
      redirect_to member_path(@member)
    elsif
      flash[:alert] = "member could not be created"
      render :new
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :mid_name, :aka, :birth_date,
      contacts_attributes: [:point, :kind, :name, :preferred],
      addresses_attributes: [:line1, :line2, :city, :state, :zip, :kind]
      )
  end
end
