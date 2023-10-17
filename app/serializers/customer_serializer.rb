class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email
  has_many :bookings
end
