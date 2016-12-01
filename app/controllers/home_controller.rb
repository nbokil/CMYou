class HomeController < ApplicationController

  def home
    if (current_user && current_user.role?(:student))
      @recommended_orgs = find_organization_recommendations
      @student = current_user.student.id

    elsif (current_user)
    #  @recommended_houses = find_house_recommendations
    else
      redirect_to login_path
    end
  end

  def dorm
    @dorm = params[:name]
    @students_= Student.for_dorm(params[:name]).count
    @student_interests = student_interests
  end

  def student_dashboard
    @commitments = current_user.favorite_organizations
    
  end

  private

  def student_interests
    students_ids = Student.for_dorm(params[:name]).map(&:id)
    student_interests = Hash.new
    students_ids.each do |sid|
      interest = Interest.get_interests(sid)
      interest.each do |i|
        if student_interests.has_key?(i.name) 
          student_interests[i.name] += 1
        else
          student_interests[i.name] = 1
        end
      end
    end
    return student_interests
  end

  def find_organization_recommendations
    tag_ids = match_interests_to_tags
    org_ids = match_tags_to_orgs(tag_ids)
    matching_orgs = find_org_names(org_ids)

    return matching_orgs
  end

  def match_interests_to_tags
    interests = current_user.student.interests
    matching_tags = Hash.new

    interests.each do |i|
      tag = Tag.for_interest(i.name)
      unless (tag.empty? or matching_tags.has_value?(tag[0].id))
        matching_tags[tag[0].id] = tag[0].id 
      end
    end

    return matching_tags

  end

  def match_tags_to_orgs(tag_ids)
    matching_orgs = Array.new

    tag_ids.each do |t|
      matching_orgs << OrgTag.for_org(t).map(&:organization_id)
    end

    return matching_orgs
  end

  def find_org_names(org_ids)
    matching_orgs = Array.new

    org_ids.each do |oi|
      matching_orgs << Organization.for_org(oi).map {|o| [o.id, o.name, o.description]}
    end

    return matching_orgs
  end


end