# The first argument to `can` is the action you are giving the user
# permission to do. If you pass :manage it will apply to every action. Other common actions
# here are :read, :create, :update and :destroy.
#
# The second argument is the resource the user can perform the action on.
# If you pass :all it will apply to every resource. Otherwise pass a Ruby
# class of the resource.
#
# The third argument is an optrional hash of conditions to further filter the
# objects.For example, here the user can only update published articles.
#
#   can :update, Article, :published => true
#
# See the wiki for details:
# https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

class Ability
  include CanCan::Ability

  def initialize(user)
    @user=user

    set_basic_user_abilities

    if user.manager?
      set_manager_abilities
    end

    if user.admin?
      set_admin_abilities
    end

  end

  def set_basic_user_abilities
    can :read, [ActPlan, Act]
    can [:show, :edit, :update], User, :id => @user.id
  end

  def set_manager_abilities
    can [:create, :show, :index, :update, :destroy], [ActPlan, Act]
  end

  def set_admin_abilities
    can :manage, :all
  end

end
