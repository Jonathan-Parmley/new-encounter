class ExperiencesController < ApplicationController
    before_action :set_experience, only: [:show, :edit, :update, :destroy]

    def index
        @experiences = Experience.all
    end

    def show
    end

    def new
        @experience = Experience.new
        authorize @experience
    end

    def create
        @experience = Experience.new(experience_params)
        authorize @experience
        if @experience.save
            redirect_to experience_path(@experience), notice: 'Experience was successfully created'
        else
            render :new
        end
    end

    def edit
    end

    def updated
        @experience.update(experience_params)
        redirect_to experience_path(@experience_path), notice: 'Experience was successfully updated'
    end

    def destroy
        @experience.destroy
        redirect_to experiences_path
    end

    private

    def set_experience
        @experience = Experience.find(params[:id])
        authorize @experience
    end

    def experience_params
        params.require(:experience).permit(:title, :description, :location, :duration, :price, :user_id)
    end
end
