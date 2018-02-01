class Patient
  attr_accessor :name, :appointments
  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    self.appointments << app
    app.patient = self
  end

  def appointment
    self.appointments
  end

  def doctors
    self.appointments.map {|appt| appt.doctor}
  end
end
