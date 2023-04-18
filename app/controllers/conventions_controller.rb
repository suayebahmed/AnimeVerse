class ConventionsController < ApplicationController
    def index 
        @conventions = Convention.all
        render :index
    end
    def show
        @convention = Convention.find(params[:id])
        render :show
    end 
end
