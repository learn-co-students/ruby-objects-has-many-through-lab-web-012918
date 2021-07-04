class Doctor
  attr_reader
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appts|
      appts.patient
    end
  end
end
