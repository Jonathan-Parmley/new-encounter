class BookingPolicy < ApplicationPolicy
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

  def new?
    create?
  end

  def create?
    return true
    # user.present?
  end

  def update?
    return  true if user.present? && user == booking.user
  end

  def destroy?
    return  true if user.present? && user == booking.user
  end

  private

  def booking
    record
  end
end
