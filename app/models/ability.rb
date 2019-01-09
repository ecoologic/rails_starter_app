# Who can do what
class Ability
  include CanCan::Ability

  def initialize(user)
    if !user
      nil
    elsif user.god_role?
      can :manage, :all
    else
      basic_abilities(user)
    end
  end

  def basic_abilities(user)
    can :read, User
    can :manage, User, id: user.id

    can :manage, Page, creator_id: user.id
    can :read, Page
  end
end
