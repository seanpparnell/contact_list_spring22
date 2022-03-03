class Address < ApplicationRecord
  belongs_to :contact

  validates :street, :zip, :state, :city, presence: true 
  validates :zip, numericality: { only_integer: true }
  validates :state, inclusion: {
    in: %w(UT NV CA),
      message: "Not a valid state in the US"
  }
  
end