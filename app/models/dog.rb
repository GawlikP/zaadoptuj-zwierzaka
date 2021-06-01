class Dog < ApplicationRecord
  belongs_to :user
  has_many :question
  has_many :adoption_offert

  validates :breed, presence: true
  validates :name, presence: true
  validates :birth_date, presence: true
  validates :description, presence: true
  validates :vaccination, presence: true
  validates :size, presence: true
  validates :weight, presence: true
  validates :height, presence: true
  validates :apartment_size, presence: true
  validates :childrens, presence: true
  validates :time_to_spent, presence: true
  validates :owner_with_dogs, presence: true
  validates :animals, presence: true
  validates :noise, presence: true
  validates :energy, presence: true
  validates :disposition, presence: true
  validates :localization, presence: true
  validates :coat, presence: true
  validates :drooling, presence: true
  validates :obedience, presence: true


end
