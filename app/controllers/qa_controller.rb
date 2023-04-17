class QaController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def index
        @questions = Question.all
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
        @question = Question.new(params.require(:question).permit(:title, :desc))
        if @question.save
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
