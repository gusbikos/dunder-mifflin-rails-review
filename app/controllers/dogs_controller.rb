class DogsController < ApplicationController

    def index 
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end 

    def sort_dogs
        @sort = Dog.all.sort_by {|e| e.employees.size}.reverse
    end 

  
end
