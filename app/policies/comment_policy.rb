class CommentPolicy < ApplicationPolicy
    
    def destroy?
        record.post.user_id == user.id
    end

end