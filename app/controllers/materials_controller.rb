class MaterialsController < ApplicationController
    def index
        @materilas = Materilas.all
    end
end
