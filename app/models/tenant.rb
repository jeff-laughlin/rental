class Tenant < ApplicationRecord
  has_one :user, as: :role

  delegate :first_name, :last_name, :phone_number, :email, to: :user
end
