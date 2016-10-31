class HomeController < ApplicationController

  def home
    if (current_user && current_user.role?(:student))
      @recommended_orgs = find_organization_recommendations

    elsif (current_user)
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

  private
  def find_organization_recommendations
    interests = current_user.student.interests
    tags = Tag.all
    matching_tags = Array.new
    rec_orgs = Array.new

    interests.each do |i|
      tag.each do |t|
        if i.name == t.name
          matching_tags << t.id
        end
      end
    end

    rec_orgs = find_matching_orgtags(matching_tags)

  end

  def find_matching_orgtags(tags)
    tags.each do |t|
      curr_ot = OrgTag[t]
      curr_org = 'hello'

  end
end

end