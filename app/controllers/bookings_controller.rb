class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :destroy]
    before_action :set_experience, only: [:new, :create]
    
    def index
      @bookings = Booking.all
      authorize @bookings
    end

    def show
      
    end

    def new
        @booking = Booking.new 
        authorize @booking
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.experience = @experience
        @booking.user = current_user
        authorize @booking
        # @experience.user = current_user
        if @booking.save!
            redirect_to booking_path(@booking), notice: 'Booking was successfully created'
        else
            render :new
        end
    end

    def destroy
        @booking.destroy
        redirect_to experience_path(@booking.experience)
    end


    private

    def booking_params
        params.require(:booking).permit(:date, :user_id, :experience_id)
    end

    def set_booking
        @booking = Booking.find(params[:id])
        authorize @booking
    end
    
    def set_experience
        @experience = Experience.find(params[:experience_id])
    end
end
