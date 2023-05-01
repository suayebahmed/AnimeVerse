class AnswersController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission, except: [:index, :show, :new, :create]

    def require_permission
        # if Answer.find(params[:id]).creator != current_user
        unless Answer.find(params[:id]).creator == current_user || current_user == User.find(1)
            flash[:error] = 'You do not have permission to do that.'
            redirect_to qa_path
        end
    end

    def index
        @question = Question.find(params[:question_id])
        @answers = @question.answers
        render :index
    end

    def show
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id])
        render :show
    end

    def new
        @question = Question.find(params[:question_id])
        @answer = Answer.new
    render :new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer].permit(:title))
    @answer.user_id = current_user.id
    @answer.save 

    if @answer.title.blank?
      flash[:error] = "Post content cannot be empty"
      render :new
    elsif @answer.save
      flash[:success] = "Answer saved successfully"
      redirect_to qa_show_url(@question)
    else
      flash.now[:error] = "Answer could not be saved"
      render :new, status: :unprocessable_entity
    end
  end


    def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if @answer.update(params.require(:answer).permit(:title))
      flash[:success] = "Answer updated successfully"
      redirect_to qa_show_url(@question)
    #   question_answers_url(@question)
    else
      flash.now[:error] = "Answer could not be updated"
      render :edit, status: :unprocessable_entity
    end
  end
    
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    flash[:success] = "Answer deleted successfully"
    redirect_to qa_show_url(@question), status: :see_other
  end

end
