class AddTimeToInterviewAppointments < ActiveRecord::Migration
  def change
  	add_column :interview_appointments, :appointment_time, :time
  end
end
