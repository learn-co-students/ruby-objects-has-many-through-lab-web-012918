require 'pry'
class Doctor
  attr_reader :name
  attr_accessor :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(appointment)
    # binding.pry
    appointment.doctor = self
    @appointments << appointment

  end
  def appointments
    @appointments
  end
  def patients
    @appointments.map {|a| a.patient}
  end
end
