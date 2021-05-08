class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]
  before_action :set_experience, only: [:new, :create]
    # after_action :verify_authorized, only: [:index]

    # def index
    #   @reviews = policy_scope(current_user.reviews)
    #   authorize @reviews
    # end

    # def new
    #   @review = Review.new 
    #   # authorize @review
    # end

    # def show
    #   @review = Review.find(params[:id])
    #   # @reviw.user = current_user
    # end

    def create
      @experience = Experience.find(params[:experience_id])
      @review = Review.new(review_params)
      @review.experience = @experience
      authorize @experience
      # @review.user = current_user
      # authorize @review
      # @experience.user = current_user

      if @review.save!
          redirect_to experience_path(@experience), notice: 'Review was successfully created'
      else
        # flash[:alert] = "Something went wrong."
        redirect_to experience_path(@experience)
      end
    end

    # def destroy
    #   @review = Review.find(params[:id])
    #   @review.destroy
    #   redirect_to review_path(@review.experience)
    # end


    private

    def review_params
      params.require(:review).permit(:name, :comment, :rating)
    end

    def set_review
      @review = Review.find(params[:id])
      # authorize @review
    end
    
    def set_experience
      @experience = Experience.find(params[:experience_id])
    end
end
