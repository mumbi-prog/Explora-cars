class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name
  has_many :bookings
end
