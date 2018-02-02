require 'pry'
class Doctor
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []

  end
  #binding.pry
  def add_appointment(appointment)

    @appointments << appointment
    appointment.doctor = self
  
  end
  def patients
    @appointments.collect do |person|
      #binding.pry
      person.patient
    end
  end
end
