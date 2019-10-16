class QuestionsController < ApplicationController

    def index
        @questions = Question.all
        @fields = Field.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def new
        @material = Material.find(rand(1..Material.count))
        @question = Question.new(contents: mass_to_mol(@material.name, @material.amount_of_substance))
    end

    def new_question
        @material = Material.find(rand(1..Material.count))
        @question = Question.new(contents: mass_to_mol(@material.name, @material.amount_of_substance))
        return @question.contents
    end

    def create
        @question = Question.new(question_params)
        redirect_to root_path if @question.save
        render 'new' unless @question.save
    end

    helper_method :new_question
    
    material_hash = {硫酸: 98, 二酸化炭素: 44, 酸素: 32}
    material_array = ['硫酸', '二酸化炭素', '酸素']

    private
    def mass_to_mol(material, amount_of_substance)
        rand_mol = rand(1..100) / 10.00
        p rand_mol
        mass_to_mol_sentence = "#{material}が#{amount_of_substance.to_f * rand_mol}gあります。何molですか?"
        return mass_to_mol_sentence
    end
end
