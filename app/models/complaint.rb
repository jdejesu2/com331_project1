class Complaint < ApplicationRecord
  belongs_to :reporter

  validates :date, :location, :department, :description, :reporter_id, presence: true

  validates :department, inclusion: { in: %w(Maintenance Technology),
    message: "You did not enter a correct department" }

  validates :location, inclusion: {
    in: %w(Stuart Keating Kaplan Pritzker Engineering Alumni  Hermann MSV SSV MTCC
      Perlstein Wishnick Siegel Galvin Crown IIT-Tower),
      message: "You did not enter a correct location"  }

  def complaint_number= (a_number)
    self.complaint = Complaint.find_or_create_by(a_number: a_number)
  end

  def complaint_number
    self.complaint ? self.complaint.a_number : nil
  end

end
