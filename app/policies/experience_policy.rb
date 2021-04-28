class ExperiencePolicy < ApplicationPolicy
  def index?
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
