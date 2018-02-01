class Doctor

  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def patients
    arr = @appointments.select do |apt|
      apt.doctor == self
    end
    arr.collect do |instance|
      instance.patient
    end
  end




end
