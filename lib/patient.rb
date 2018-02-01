class Patient
  attr_reader :name, :appointments, :doctors

  def initialize (name)
    @name = name
    @appointments =[]
    @doctors = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
    @doctors << appt.doctor
  end


end
