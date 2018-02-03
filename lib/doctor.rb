class Doctor

  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_appointment)
    @appointments << new_appointment
    new_appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    # binding.pry
    @appointments.collect do |appointment|
    appointment.patient
    end
  end

end
