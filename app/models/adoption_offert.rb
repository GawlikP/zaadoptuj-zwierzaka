class AdoptionOffert < ApplicationRecord
  belongs_to :receiver, :class_name => "User"
  belongs_to :sender, :class_name => "User"
  belongs_to :dog
  def init
      self.readed = false
      self.aproved = false
  end
end
