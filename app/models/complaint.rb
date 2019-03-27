class Complaint < ApplicationRecord
  belongs_to :reporter

  validates :date, :location, :department, :description, :reporter_id, presence: true

  validates :department, inclusion: { in: %w(Maintenance Technology),
    message: "You did not enter a correct department" }

  validates :location, inclusion: {
    in: %w(Stuart Keating Kaplan Pritzker Engineering Alumni  Hermann MSV SSV MTCC
      Perlstein Wishnick Siegel Galvin Crown IIT-Tower),
      message: "You did not enter a correct location"  }

  def person_number=(a_number)
    self.reporter = Reporter.find_by(a_number: a_number)
  end

  def person_number
    self.reporter ? self.reporter.a_number : nil
  end

end
