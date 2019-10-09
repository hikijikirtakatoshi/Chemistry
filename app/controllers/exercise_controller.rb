class ExerciseController < ApplicationController
    def index
        @excercises = Exercise.all
    end
end
