class ConventionsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @conventions = Convention.all
        render :index
    end
    def show
        @convention = Convention.find(params[:id])
        render :show
    end 
end
