class HomeController < ApplicationController

  def home
    #if (current_user && current_user.owner?)
    #  @recommended_houses = find_house_recommendations
    #  @recommended_users = find_user_recommendations
    #  @my_house = current_user.houses.active.first

    if (current_user)
    #  @recommended_houses = find_house_recommendations
    else
      redirect_to login_path
    end
  end

  def about
  end

  def privacy
  end

  def contact
  end

end