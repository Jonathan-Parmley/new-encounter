class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  # only: [:home]
  
  # def home
  #   @experiences = policy_scope(Experience).order(created_at: :desc)
  # end
  
  def home
    @experiences = Experience.all
  end
end
