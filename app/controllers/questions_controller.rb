class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(your_message)

     if your_message == "I am going to work"
       return "Great!"
     elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
      else
      return  "I don't care, get dressed and go to work!"
      end
  end

end
