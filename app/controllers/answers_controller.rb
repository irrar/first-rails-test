class AnswersController < ApplicationController
  def answer
    @answer = coach_answer_enhanced(params[:question])
  end

  def coach_answer(your_message)
    if your_message.capitalize == "I am going to work!"
      "Great!"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ""
      if your_message.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end
end
