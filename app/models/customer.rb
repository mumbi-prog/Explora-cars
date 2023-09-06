class Customer < ApplicationRecord
  has_many :bookings
  has_secure_password
  validates_presence_of :password, :email, :age, :mobile_number, :full_name
  validates :email, uniqueness: { case_sensitive: false }, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },length: { minimum: 4, maximum: 254 }
  validates :mobile_number, numericality: { is: 12 }
  validate :fullname_not_email
  validates :password, length:{minimum: 8}
  validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 65 }
                  

  private
  def fullname_not_email
    return unless /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.match?(full_name)

    errors.add(:full_name, 'cannot be an email address')
  end
end
