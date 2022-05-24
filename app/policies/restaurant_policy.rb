class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    # the person that created
    # record -> restaurant that is passed in the authorize
    # user --> current_user
    record.user == user || user.admin
  end

  def show?
    true
  end



end
