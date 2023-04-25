class CommentsController < ApplicationController
    before_action :find_article
    before_action :find_comment, only: [:show, :destroy, :edit, :update, :comment_owner]
    before_action :comment_owner, only: [:destroy, :edit, :update]

    def show
        @comment.destroy
        redirect_to article_path(@article)
    end


    def create
        @comment = @article.comments.create(params[:comment].permit(:body))
        @comment.user_id = current_user.id
        @comment.save

        if @comment.save
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end


    def destroy
        @comment.destroy
        redirect_to article_path(@article)
    end

    def edit
    end

    def update
        if @comment.update(params[:comment].permit(:body))
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end



    private
    def find_article
        @article = Article.find(params[:article_id])
    end

    def find_comment
        @comment = @article.comments.find(params[:id])
    end 

    def comment_owner
        unless current_user.id == @comment.user_id
            flash[:error] = 'You do not have permission to do that.'
            redirect_to @article
        end
        
    end

end
