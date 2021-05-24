class Question < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :question, :presence => true


  def init
    self.hiden = true
  end
end
