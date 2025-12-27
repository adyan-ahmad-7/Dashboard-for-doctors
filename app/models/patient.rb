class Patient < ApplicationRecord
  belongs_to :user

  before_create :generate_patient_id

  def age
    return unless date_of_birth
    ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
  end

  private

  def generate_patient_id
    loop do
      self.patient_id = "PT-#{SecureRandom.random_number(1_000_000).to_s.rjust(6, '0')}"
      break unless Patient.exists?(patient_id: patient_id)
    end
  end
end
