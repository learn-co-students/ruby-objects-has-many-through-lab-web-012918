class Appointment
  attr_reader :doctor, :date
  attr_accessor :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end



end
