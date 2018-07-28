class User < ApplicationRecord
  has_many :accounts

  validates :email, uniqueness: true

end
