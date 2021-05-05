class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  # only: [:home]
  
  # def home
  #   @experiences = policy_scope(Experience).order(created_at: :desc)
  # end
  def home
    if params[:query].present?
      @experiences = policy_scope(Experience).search_by_title_location_and_category(params[:query])
      # @experiences = Experience.search_by_title_location_and_category(params[:query])
     else
      # @experiences = Experience.all
      # authorize @experiences
      @experiences = policy_scope(Experience).order(created_at: :desc)
    end

    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
  end
  end
end
