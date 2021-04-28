class BookingsController < ApplicationController
    before_action :set_booking, only: :destroy
    before_action :set_experience, only: [:new, :create]

    def new
        @booking = Booking.new 
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.experience = @experience
        @experience.user = current_user
        if @booking.save
            redirect_to experience_path(@experience), notice: 'Booking was successfully created'
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
    end
    
    def set_experience
        @experience = Experience.find(params[:experience_id])
    end
end
