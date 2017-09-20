class Landlord < ApplicationRecord
  has_many :users
  has_many :properties
end
