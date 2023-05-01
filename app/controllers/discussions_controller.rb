class DiscussionsController < ApplicationController
  # before_action :require_permission, except: [:index, :show]

  # def require_permission
  #   @list = Anime.find(params[:anime_id])
  #   if @list.creator != current_user
  #     flash[:error] = 'You do not have permission to do that.'
  #     redirect_to list_path(@list)
  #   end
  # end

    def index
        @list = Anime.find(params[:anime_id])
        @discussions = @list.discussions
        render :index  
    end

    def show
        @list = Anime.find(params[:anime_id])
        @discussions = @list.discussions.find(params[:id])
        render :show
      end

   def new
    @list = Anime.find(params[:anime_id])
    @discussion = Anime.new
    render :new
   end    

   def create
    @list = Anime.find(params[:anime_id])
    @discussion = @list.discussions.build(params.require(:anime).permit(:discus))
    if @discussion.save
      flash[:success] = "Comment saved successfully"
      redirect_to list_discussions_url(@list)
    else
      flash.now[:error] = "Comment could not be saved"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = Anime.find(params[:anime_id])
    @discussion = @list.discussions.find(params[:id])
    @discussion.destroy
    flash[:success] = "Comment deleted successfully"
    redirect_to list_discussions_url(@list), status: :see_other
  end

end
