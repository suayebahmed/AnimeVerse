class ListsController < ApplicationController

    def index 
        @lists = Anime.order(:title)
        render :index
    end

    def show
        @list = Anime.find(params[:id])
        render :show
      end
end
