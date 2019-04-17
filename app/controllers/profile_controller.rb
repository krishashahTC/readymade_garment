class ProfileController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to user_profile_path(@user, @profile)
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :gender, :address, :city, :state, :phone_number, :seller_type)
  end
end
