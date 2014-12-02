class AddAppointmentDateToInterviewAppointments < ActiveRecord::Migration
  def change
  	add_column :interview_appointments, :appointment_date, :date
  end
end
