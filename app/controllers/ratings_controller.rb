class RatingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :require_permission, except: [:index, :show, :new, :create, :edit, :destroy]

    def index
        @convention = Convention.find(params[:convention_id])
        @ratings = @convention.ratings
        render :index
      end
      def show
        @convention = Convention.find(params[:convention_id])
        @rating = @convention.ratings.find(params[:id])
        render :show
      end
      def new
        @convention = Convention.find(params[:convention_id])
        @rating = Rating.new
        render :new
      end
      def create
        @convention = Convention.find(params[:convention_id])
        @rating = @convention.ratings.build(params.require(:rating).permit(:review, :comment, :stars))
        if @rating.save
          flash[:success] = "Rating Has Been Added"
          redirect_to convention_ratings_url(@convention)
        else
          flash.now[:error] = "Rating couldn't be Added"
          render :new, status: :unprocessable_entity
        end
      end
      def edit
        @convention = Convention.find(params[:convention_id])
        @rating = @convention.ratings.find(params[:id])
        render :edit
      end
      def update
        @convention = Convention.find(params[:convention_id])
        @rating = @convention.ratings.find(params[:id])
        if @rating.update(params.require(:rating).permit(:stars, :comment, :review))
          flash[:success] = "Rating has been updated successfully"
          redirect_to convention_ratings_url(@convention, @rating)
        else
          flash.now[:error] = "Rating could not be updated"
          render :edit, status: :unprocessable_entity
        end
      end

      def destroy
        @convention = Convention.find(params[:convention_id])
        @rating = @convention.ratings.find(params[:id])
        @rating.destroy
        flash[:success] = "Rating has been deleted successfully"
        redirect_to convention_ratings_url(@convention), status: :see_other
      end
end 
