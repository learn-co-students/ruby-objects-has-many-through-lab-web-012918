# class Appointment
#
#   attr_accessor :patient, :doctor
#
#   def initialize(date, doctor)
#     @doctor = doctor
#   end
#
#
#
# end

class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
