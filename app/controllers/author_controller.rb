class AuthorController < ApplicationController

def index 
    @lists = Anime.order(:author)
    render :index
end


end
