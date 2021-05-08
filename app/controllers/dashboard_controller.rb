class DashboardController < ApplicationController
  def index
    @bookings = policy_scope(current_user.bookings)
    #authorize @bookings
    @experiences = policy_scope(current_user.experiences)
    #authorize @experiences
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end
end
