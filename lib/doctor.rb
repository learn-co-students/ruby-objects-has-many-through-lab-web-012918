# class Doctor
#
#   attr_accessor :patients
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#     @patients = []
#   end
#
#   def add_appointment(appointment)
#     @appointments << appointment
#     appointment.doctor = self
#   end
#
#   def patients
#     @patients.appointments
#   end
# end

class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
