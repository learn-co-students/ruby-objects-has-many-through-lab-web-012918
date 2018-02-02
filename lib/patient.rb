# class Patient
#
#   attr_accessor :appointments
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(new)
#     @appointments << new
#
#   end
#
# end

class Patient

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
