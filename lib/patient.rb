class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    @appointments.collect do |appts|
      appts.doctor
    end
  end

end
