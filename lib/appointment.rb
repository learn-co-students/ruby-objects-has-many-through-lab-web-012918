class Appointment
  attr_accessor :name, :doctor, :patient

  def initialize(appointment,doctor)
    @appointment = appointment
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def patient
    @patient
  end
end
