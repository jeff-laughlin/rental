class Tenant < ApplicationRecord
  has_one :users, as: :role
end
