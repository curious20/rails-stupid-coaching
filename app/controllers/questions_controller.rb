# some controller
class QuestionsController < ApplicationController
  def ask; end

  def answer
    # raise
    @query = params[:first]
    @reply = if @query == 'I am going to work'
               'Great!'
             elsif @query.include?('?')
               'Silly question, get dressed and go to work!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end
