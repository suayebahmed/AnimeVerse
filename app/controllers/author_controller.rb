class AuthorController < ApplicationController
    before_action :authenticate_user!
    def index 
        @lists = Anime.order(:author)
        render :index
    end


end
