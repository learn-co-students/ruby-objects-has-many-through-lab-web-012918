class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date_string, doctor)
    @date = date_string
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
