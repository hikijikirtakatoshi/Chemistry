class QuestionsController < ApplicationController

    material_hash = {硫酸: 98, 二酸化炭素: 44, 酸素: 32}
    material_array = ['硫酸', '二酸化炭素', '酸素']

    number_of_questions = 4

    avogadro_constant = 6.0 * (10 **23)

    def index
        @questions = Question.all
        @fields = Field.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def new
        @question = Question.new(contents: mass_to_mol)
    end

    def new_question
        return "塩酸がたくさん...うれしい..."
    end

    def create
        @question = Question.new(question_params)
        redirect_to root_path if @question.save
        render 'new' unless @question.save
    end

    helper_method :new_question
    
end
