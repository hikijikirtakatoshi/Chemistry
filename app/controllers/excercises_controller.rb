class ExcercisesController < ApplicationController
    def index
        @exercises = Exercise.all
    end
end
