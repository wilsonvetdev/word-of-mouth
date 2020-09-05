class Professor < ApplicationRecord

    def self.search(search_param)
        if search_param 
            @professors = where(["last_name LIKE ? OR first_name LIKE ?", "%#{search_param}%", "%#{search_param}%"]) 
        else 
            @professors = Professor.all
        end
    end
end
