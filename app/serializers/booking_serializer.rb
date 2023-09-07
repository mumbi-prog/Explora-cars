class BookingSerializer < ActiveModel::Serializer
  attributes :id,:start_date,:end_date,:total_price
  belongs_to :car
end
