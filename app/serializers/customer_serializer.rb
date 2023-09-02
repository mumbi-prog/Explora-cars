class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :mobile_number, :age
end
