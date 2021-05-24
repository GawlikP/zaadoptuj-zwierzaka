class Profile < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true

  def init
    self.apartment ||= 0
    self.garden ||= 0
    self.age ||= 0
    self.animal_experience ||= 0
    self.time_to_spent ||= 0
    self.finance ||= 0
    self.description ||= "Nie ustawiono opisu"
  end
end
