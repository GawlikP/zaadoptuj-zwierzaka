class Question < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :question , presence: true
end
