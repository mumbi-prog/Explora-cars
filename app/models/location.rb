class Location < ApplicationRecord
    

    validates :name, presence: true
    validates :phone_number, numericality: { is: 12 }
    validates :address, presence: true

end
