class Reporter < ApplicationRecord
  has_many :complaints

  validates :first_name, :last_name, :a_number, :school_email, presence: true

  validates :a_number, uniqueness: true

  validates :school_email, allow_blank: true,
  format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: 'must be a URL of GIF, JPG, or PNG image.'
  }
  
end
