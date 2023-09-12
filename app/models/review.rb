class Review < ApplicationRecord
validates_presence_of :title, :body, :rating
validates :rating, length:{minimum: 1, maximum: 5}
  belongs_to :car
  belongs_to :customer
end
