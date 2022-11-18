class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    return unless user.present?

    can :create, Recipe
    can :create, Ingredient
    can :create, RecipeFood
    can :create, Food

    can :destroy, Recipe do |rec|
      rec.try(:user) == user
    end
    can :destroy, Food do |food|
      food.try(:user) == user
    end
    can :destroy, RecipeFood do |rf|
      rf.try(:user) == user
    end
    can :destroy, Ingredient do |ing|
      ing.try(:user) == user
    end

    can :update, Recipe do |rec|
      rec.try(:user) == user
    end
    can :update, Food do |food|
      food.try(:user) == user
    end
    can :update, RecipeFood do |rf|
      rf.try(:user) == user
    end
    can :update, Ingredient do |ing|
      ing.try(:user) == user
    end
    return unless user.admin?

    can :manage, :all
  end

  # Define abilities for the user here. For example:
  #
  #   return unless user.present?
  #   can :read, :all
  #   return unless user.admin?
  #   can :manage, :all
  #
  # The first argument to `can` is the action you are giving the user
  # permission to do.
  # If you pass :manage it will apply to every action. Other common actions
  # here are :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on.
  # If you pass :all it will apply to every resource. Otherwise pass a Ruby
  # class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the
  # objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, published: true
  #
  # See the wiki for details:
  # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
end
