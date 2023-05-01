class AbcController < ApplicationController
    before_action :authenticate_user!
    def index 
        @lists = Anime.order(:title)
        render :index
    end

end
