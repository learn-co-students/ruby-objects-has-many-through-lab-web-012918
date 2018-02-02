class Doctor
  def initialize(name)
    @name = name
    @appointments = []
  end

  def name
    @name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map { |appointment| appointment.patient  }
  end
end
