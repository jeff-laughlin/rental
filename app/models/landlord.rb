class Landlord < ApplicationRecord
  has_many :users
  has_many :properties
  belongs_to :tenants
end
