class ListsController < ApplicationController
    def index
        @lists = Anime.order(:genre)
        render :index
    end 

    def show
      @list = Anime.find(params[:id])
      render :show
    end

    def new
        @list = Anime.new
        render :new
    end  

    def create
        @list = Anime.new(params.require(:anime).permit(:title, :summary, :author, :genre, :ratings))        
        if @list.title.blank? || @list.summary.blank?
            flash[:error] = 'Anime creation failed'
            render :new
        elsif @list.save
          flash[:success] = 'New anime successfully added!'
          redirect_to lists_url
        else
          flash.now[:error] = 'Anime creation failed'
          render :new, status: :unprocessable_entity
        end
      end      
    
    def edit
        @list = Anime.find(params[:id])
        render :edit
      end

    def update
        @list = Anime.find(params[:id])
        if @list.update(params.require(:anime).permit(:title, :summary, :author, :genre, :ratings))
          flash[:success] = 'The Anime was successfully updated!'
          redirect_to list_url(@list)
        else
          flash.now[:error] = 'The Anime update failed'
          render :edit, status: :unprocessable_entity
        end
      end      

    def destroy
      @list = Anime.find(params[:id])
      @list.destroy
      flash[:success] = 'The Anime was successfully destroyed.'
      redirect_to lists_url, status: :see_other
      end  
end
