class QaController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission, except: [:index, :show, :new, :create]

    def require_permission
        # if Question.find(params[:id]).creator != current_user
        unless Question.find(params[:id]).creator == current_user || current_user == User.find(1)
            flash[:error] = 'You do not have permission to do that.'
            redirect_to qa_path
        end
    end

    def index
        @questions = Question.order(created_at: :desc)
        render :index
    end

    def show
        @question = Question.find(params[:id])
        render :show
    end

    def new
        @question = Question.new
        render :new
    end

    def create
        @question = current_user.questions.build(params.require(:question).permit(:title, :desc))
        if @question.title.blank? || @question.desc.blank?
            flash[:error] = "Post content cannot be empty"
            render :new
        elsif @question.save
            flash[:success] = 'New Question successfully added!'
            redirect_to qa_url
        else
            flash.now[:error] = 'Question creation failed'
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @question = Question.find(params[:id])
        render :edit
    end

    def update
        @question = Question.find(params[:id])
        if @question.update(params.require(:question).permit(:title, :desc))
            flash[:success] = 'Question successfully updated!'
            redirect_to qa_show_url(@question)
        else
            flash.now[:error] = 'Question update failed'
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy
        flash[:success] = 'The Question was successfully destroyed.'
        redirect_to qa_url, status: :see_other
    end

end
