class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)  #takes an instance of an app
    self.appointments << app
    app.doctor = self
  end

  def appointment
    self.appointments
  end

  def patients
    self.appointments.map {|appt| appt.patient}
  end
end
