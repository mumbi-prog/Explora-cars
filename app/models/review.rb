class Review < ApplicationRecord
  belongs_to :car
  belongs_to :customer
end
