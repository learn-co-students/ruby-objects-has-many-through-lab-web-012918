class Patient

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_appointment)
    # binding.pry
    @appointments << new_appointment
    new_appointment.patient = self
  end

  def doctors
    @appointments.collect {|appointment|
    appointment.doctor}
  end

end
