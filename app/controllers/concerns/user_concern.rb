module UserConcern
    extend ActiveSupport::Concern
    
    def only_admins
      unless is_admin?
        redirect_to products_path
      end
    end
    
    def is_admin?
        Integer(current_user.access_lvl) >= 2
    end
end