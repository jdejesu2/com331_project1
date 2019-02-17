class Reporter < ApplicationRecord
  has_and_belongs_to_many :complaints
end
