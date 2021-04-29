class ExperiencePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def home?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    return  true if user.present? && user == experience.user
  end

  def destroy?
    return  true if user.present? && user == experience.user
  end

  private

  def experience
    record
  end
end
