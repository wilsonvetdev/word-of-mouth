class WorkplacesController < ApplicationController

    def new 
        @workplace = Workplace.new
        @current_college = College.find_by(id: session[:current_college]) 
        @professor = Professor.new
    end

    def create 
        @professor = Professor.new
        @workplace = Workplace.new
        @current_college = College.find_by(id: session[:current_college]) 
        name_array = params[:workplace][:professor].split(" ")
        @professor.first_name = name_array[0]
        @professor.last_name = name_array[1]
        @professor.save
        @workplace.college = @current_college
        @workplace.professor_id = @professor.id
        @workplace.department = params[:workplace][:department]
        @workplace.save
        
        redirect_to college_path(@current_college)
    end

    private 

    def validate_professor_name

    end

    def workplace_params
        params.require(:workplace).permit(:college, :professor, :first_name, :last_name, :department)
    end

end
