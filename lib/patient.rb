require "pry"

class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt

    appt.patient = self
  end

def doctors

  arr = @appointments.select do |appt_instance|
    appt_instance.patient == self
  end
  arr.collect do |obj|
    obj.doctor
  end
end



end
