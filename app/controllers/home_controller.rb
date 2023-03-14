class HomeController < ApplicationController
  def index
    @questions = Question.all
  end

  def calculate_result
    result = 0
    count = Question.all.count
    question_params = params.select { |k, v| k.include?("question") }
    question_values = question_params.slice(*question_params.keys).values
    if question_values.length < count
      redirect_to root_path, alert: "Please answer all questions"
      return
    end
    question_values.each do |n|
      id = n.to_i
      option_type = Option.find(id).option_type
      if option_type == 'introvert'
        result = result + 1
      else
        result = result - 1
      end
    end
    if result > 0
      redirect_to root_path, notice: "You are Introvert"
    elsif result < 0
      redirect_to root_path, notice: "You are Extrovert"
    else
      redirect_to root_path, notice: "You are Ambivert"
    end
  end
end
