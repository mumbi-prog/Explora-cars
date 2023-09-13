class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :car_id, :full_name
  def full_name
    self.object.customer.full_name
  end
end
