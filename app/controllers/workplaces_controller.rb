class WorkplacesController < ApplicationController

    def new 
        @workplace = Workplace.new
        @current_college = College.find_by(id: session[:current_college]) 
        @professor = Professor.new
    end

    # def create 
    #     name_array = params[:workplace][:professor].split(" ")
    #     @professor = Professor.new
    #     @professor.first_name = name_array[0]
    #     @professor.last_name = name_array[1]
    #     # @professor.department = 
    #     @professor.save
    #     byebug
    #     0
    # end

    private 

    def validate_professor_name

    end

end
