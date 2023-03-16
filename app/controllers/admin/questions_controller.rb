# frozen_string_literal: true

class Admin::QuestionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    NO_OF_OPTIONS.times { @question.options.build }
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to admin_questions_path, flash: { success: 'Question Created successfully' }
    else
      flash.now[:danger] = @question.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to admin_questions_path, flash: { success: 'Question Updated successfully' }
    else
      flash.now[:danger] = @question.errors.full_messages.to_sentence
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to admin_questions_path, flash: { success: 'Question Deleted successfully' }
  end

  private

  def question_params
    params.require(:question).permit(:title, options_attributes: %i[id title option_type _destroy])
  end

  def authenticate_admin!
    return if current_admin

    redirect_to root_path, alert: 'You must be an admin to access this page.'
  end
end
