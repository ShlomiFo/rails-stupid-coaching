class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @STOP_MESSAGE = "I am going to work right now!"
    if params[:question] == @STOP_MESSAGE || params[:question] == @STOP_MESSAGE.upcase
      @answer = "Great!"
    elsif params[:question].end_with?('?')
     @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
