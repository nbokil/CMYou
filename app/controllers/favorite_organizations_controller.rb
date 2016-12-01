class FavoriteOrganizationsController < ApplicationController
  before_action :set_organization
  
  def create
    if Favorite.create(favorited: @organization, user: current_user)
      redirect_to :back
    else
      redirect_to @organization, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @organization.id, user_id: current_user.id).first.destroy
    redirect_to :back, notice: 'Organization is no longer in favorites'
  end
  
  private
  
  def set_organization
    @organization = Organization.find(params[:organization_id] || params[:id])
  end
end