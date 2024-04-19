class QuestionController < ApplicationController
  def ask
 end
  def answer
    @question = params[:question]
    @answer = ""
    if @question.blank?
      @answer = "I cant hear you, please repeat the question."
    elsif @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
# code method in controller, call method in view
# params - pull input that user types in form
# using @ to use variable in this controller in another file
# control d select to edit bulkk
