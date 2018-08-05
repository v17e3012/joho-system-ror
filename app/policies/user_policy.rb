class UserPolicy < ApplicationPolicy
    
  def create?
    user || !User.any?
  end

  def new?
    create?
  end

end