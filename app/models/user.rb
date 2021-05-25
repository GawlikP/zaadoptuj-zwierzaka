class User < ApplicationRecord

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  validates:email, presence: true, length: {maximum: 255},

        uniqueness: true


  has_secure_password

  validates :password, presence: true, length: {minimum: 6}

  has_many :sended_adoption_offerts, :class_name => 'AdoptionOffert', :foreign_key => 'sender_id'
  has_many :recived_adoption_offers, :class_name => 'AdoptionOffert', :foreign_key => 'receiver_id'
  has_many :dogs
  has_many :profiles
  def init
    self.admin ||= false
  end

end
