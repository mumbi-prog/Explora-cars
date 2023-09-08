class Location < ApplicationRecord
    has_many :cars, dependent: :destroy

    validates :name, presence: true
    validates :phone_number, numericality: { is: 12 }
    validates :address, presence: true

end
