class User < ApplicationRecord
    validates:name, presence:true
    validates:name, length:{maximum:15}
    validates:email, presence:true
    validates:email, uniqueness:true
    validates:hitokoto, length:{maximum:30}

    def posts
        return Post.where(user_id:self.id)
    end

###################################################################    

    def self.search(search)
        if search
           User.where(['name Like ?', "%#{search}%"])
        else
           User.all
        end
    end

###################################################################


end


