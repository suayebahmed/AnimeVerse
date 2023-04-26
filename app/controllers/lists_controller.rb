class ListsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @lists = Anime.order(:title)
        render :index
    end

    def show
        @list = Anime.find(params[:id])
        render :show
      end
end
