class ApplicationController < ActionController::Base
  protect_from_forgery
  
   private
    def require_admin
      unless user_signed_in? && current_user.admin?
        flash[:error] = "You must be an admin to access this feature."
        redirect_to root_path
      end
    end

    def get_groupno(round, group)
    	case round.groups.index(group)
    	when 0
    		letter = "A"
    	when 1
    		letter = "B"
    	when 2
    		letter = "C"
    	when 3
    		letter = "D"
    	when 4
    		letter = "E"
    	when 5
    		letter = "F"
    	when 6
    		letter = "G"
    	when 7
    		letter = "H"
    	end
    	letter
    end
end
