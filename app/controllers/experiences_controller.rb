class ExperiencesController < ApplicationController
    before_action :set_experience, only: [:show, :edit, :update, :destroy]
    
    def index
        @experiences = Experience.all
        authorize @experiences
    end

    def show
        @booking = Booking.new(experience: @experience)
        
    end

    def new
        @experience = Experience.new
        authorize @experience
    end

    def create
        @experience = Experience.new(experience_params)
        @experience.user = current_user # added new to create
        authorize @experience
        if @experience.save
            redirect_to experience_path(@experience), notice: 'Experience was successfully created'
        else
            render :new
        end
        # respond_to do |format|
        #   if @experience.save
        #     format.html { redirect_to @experience, notice: 'Exprience was successfully created.' }
        #     format.json { render :show, status: :create, location: @experience }
        #   else
        #     format.html { render :new }
        #     format.json { render json: @experience.errors, status: :unprocessable_entity }
        #   end
    end

    def edit
    end

    def update
        @experience.update(experience_params)
        redirect_to experience_path(@experience), notice: 'Experience was successfully updated'
    #   render_to do |format|
    #     if @experience.update(experience_params)
    #       format.html { render_to @experience, notice: 'Experience was successfully updated' }
    #       format.json { render :show, status: :ok, location: @experience }
    #     else
    #       format.html { render :edit }
    #       format.json { render json: @experience.errors, status: :unprocessable_entity }
    #     end
    end

    def destroy
        @experience.destroy
        redirect_to root_path
    end

    private
    
    def set_experience
        @experience = Experience.find(params[:id])
        authorize @experience
    end

    def experience_params
        params.require(:experience).permit(:title, :description, :location, :duration, :price, :user_id, photos: [])
    end
end
