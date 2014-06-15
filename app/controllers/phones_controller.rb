class PhonesController < ApplicationController

  def index
    @phones = Phone.all
    @phone = Phone.new
    @screen_sizes = ['4', '5', '5.1']
    @os = ['Android', 'ioS']
    @camera = ['8', '12', '16']
  end

  def show
    @phone = Phone.find(params[:id])
    @exact_match = PhoneInfo.exact_match(@phone)
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      redirect_to phone_path(@phone)
    else
      render 'index'
    end
  end

  private

  def phone_params
    params.require(:phone).permit(:screen_size, :os, :camera, :id)
  end
end
