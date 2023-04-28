class AbcController < ApplicationController

def index 
    @lists = Anime.order(:title)
    render :index
end

end
