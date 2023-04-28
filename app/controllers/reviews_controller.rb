class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_convention
    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def show
        @review.destroy
        redirect_to convention_path(@convention)
    end

    
    def create
        @review = @convention.reviews.create(params[:review].permit(:comment, :star))
        @review.user_id = current_user.id
        @review.save

        if @review.save
            redirect_to convention_path(@convention)
        else
            flash[:error] = 'An error has occur! ..:: Invalid input for star rating ... or ... You have already left a review ::..'
            redirect_to convention_path(@convention)
        
        end
    end


    def destroy
        @review.destroy
        redirect_to convention_path(@convention)

    end


    def edit
    end

    def update
        if @review.update(params[:review].permit(:comment, :star))
            redirect_to convention_path(@convention)
        else
            render 'edit'
        end
    end

    private
    def find_convention
        @convention = Convention.find(params[:convention_id])
    end

    
    def find_review
        @review = @convention.reviews.find(params[:id])
    end 

end
