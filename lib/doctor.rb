class Doctor
  attr_reader :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appt)
    @appointments << appt
  end

  def patients
    @appointments.collect {|appt|
      @patients << appt.patient
    }[0]
  end
end
