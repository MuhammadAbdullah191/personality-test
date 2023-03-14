class Admin::QuestionsController < ApplicationController
	before_action  :authenticate_admin!

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    4.times { @question.options.build }
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to admin_questions_path, notice: "Question created successfully."
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to admin_questions_path, notice: "Question updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to admin_questions_path, notice: "Question deleted successfully."
  end

	private

  def question_params
    params.require(:question).permit(:title, options_attributes: [:id, :title, :option_type, :_destroy])
  end

  def authenticate_admin!
    unless current_admin
      redirect_to root_path, alert: "You must be an admin to access this page."
    end
  end
end