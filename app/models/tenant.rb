class Tenant < ApplicationRecord
  has_one :user
end
