class WorkplacesController < ApplicationController

    def new 
        @workplace = Workplace.new
        @current_college = College.find_by(id: session[:current_college]) # from college show action
        @professor = Professor.new
    end

    def create 
        @current_college = College.find_by(id: session[:current_college]) 
        name_array = params[:workplace][:professor].split(" ")
        # There is probably a much better way, but I took the user input here and created the professor instance in this action.
        # User input here is a full name, but my database design is first_name and last_name
        # therefore, I had to split the params input and assign it to an array.
        @professor = Professor.create(first_name: name_array[0], last_name: name_array[1])

        params[:workplace][:college_id] = @current_college.id
        params[:workplace][:professor_id] = @professor.id
        @workplace = Workplace.create(workplace_params)
        # I ran into an error here because params[:professor] from user input was giving me a string of the professor's fullname.
        # I wanted to make sure I am still incorporating strong params, so I am manipulating the params here and assigning the keys inside the params its value
        # -before the params reaches the Workplace.create.
        # I believe if I used nested routes and/or custom actions, my life probably would have been a lot easier.
        
        redirect_to college_path(@current_college)
    end

    private 

    def validate_professor_name
        ##### COME BACK TO THIS ##### ##### COME BACK TO THIS ########## COME BACK TO THIS #####
    end

    def workplace_params
        params.require(:workplace).permit(:college_id, :professor_id, :department)
    end

end
