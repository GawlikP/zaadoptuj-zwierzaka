class Question < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  
  def init
    self.hiden = true
  end
end
