class Appointment
  attr_reader :date, :patient, :doctor
  attr_writer :patient
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
