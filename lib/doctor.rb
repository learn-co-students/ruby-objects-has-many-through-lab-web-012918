require 'pry'
class Doctor
  attr_accessor :appointments, :name
  attr_reader

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect {|appt| appt.patient} # *Through*
  end

end
