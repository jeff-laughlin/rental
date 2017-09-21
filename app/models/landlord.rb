class Landlord < ApplicationRecord
  has_many :users, as: :role
  has_many :properties
  belongs_to :tenants
end
