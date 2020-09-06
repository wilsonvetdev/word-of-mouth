class College < ApplicationRecord
    has_many :workplaces

    def self.search(search_param)
        if search_param 
            @colleges = where(["name LIKE ? OR city LIKE ? OR state LIKE ?", "%#{search_param}%", "%#{search_param}%", "%#{search_param}%"]) 
        else 
            @colleges = College.all
        end
    end

end
