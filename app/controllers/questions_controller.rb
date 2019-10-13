class QuestionsController < ApplicationController
    def index
        @questions = Question.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def def
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        redirect_to root_path if @question.save
        render 'new' unless @question.save
    end

    private
    def question_params
        params.require(:question).permit(:text)
    end
    
    
end
