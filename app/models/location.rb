class Location < ApplicationRecord
    # has_many :cars

    validates :name, presence: true
    validates :phone_number, numericality: { is: 12 }
    validates :address, presence: true
#   validates :address, format: { with: /\A[0-9a-zA-Z]+\z/, message: "only allows letters and numbers" }
end
