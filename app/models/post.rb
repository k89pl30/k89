class Post < ApplicationRecord
    validates:content, {presence:true}
    validates:content, length:{maximum:140}
    validates:user_id, presence:true
   
    def user
        return User.find_by(id:self.user_id)
    end 

##########################################################

    def self.search(search)
        if search
           Post.where(['content Like ?', "%#{search}%"])
        else
           Post.all
        end
    end

##########################################################
    
end


