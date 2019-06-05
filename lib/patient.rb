require 'pry'
class Patient
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end  
  end
  
  def doctors
    x = []
    Appointment.all.each do |appt|
      if appt.patient == self
        x << appt.doctor
      end
    end
    return x    
  end  
  
end  