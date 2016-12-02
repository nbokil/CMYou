class HomeController < ApplicationController

  def home
    more = params[:more]
    if (current_user && current_user.role?(:student))
      recommended_orgs = find_organization_recommendations
      @recommended_orgs = find_organization_recommendations.each_slice(6).to_a[0]

      @recommended_orgs_2 = []

      #if ((recommended_orgs.length > 6) && (more == true))
      #  @recommended_orgs_2 = recommended_orgs.each_slice(6).to_a[1]
      #end
      
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
    @positions = get_positions
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

  def get_positions
    fav_orgs = current_user.favorite_organizations
    positions = Array.new
    times_array = Array.new

    fav_orgs.each do |o|
      positions << Position.get_position_from_org_id(o.id).map{|p| p.hour_commitment}
    end

    positions.each do |times|
      times_array.push(times[0])
    end

    return times_array
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
      matching_orgs += OrgTag.for_org(t).map(&:organization_id)
    end

    return matching_orgs
  end

  def find_org_names(org_ids)
    matching_orgs = Array.new

    org_ids.each do |oi|
      matching_orgs += Organization.for_org(oi).map {|o| [o.id, o.name, o.description]}
    end

    return matching_orgs
  end


end