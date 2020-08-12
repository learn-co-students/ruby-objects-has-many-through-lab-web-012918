class Patient
  attr_reader :patient
  attr_accessor :appointments
  def initialize(patient)
    @patient = patient
    @appointments = []
  end
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
  def appointments
    @appointments
  end
  def doctors
    @appointments.map {|a| a.doctor}
  end
end
