require 'pry'
class Appointment
  attr_accessor :doctor, :patient
  attr_reader

  def initialize(date, doctor)
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
