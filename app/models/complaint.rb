class Complaint < ApplicationRecord
  belongs_to :reporters

  validates :date, :location, :department, :description, presence: true
end
