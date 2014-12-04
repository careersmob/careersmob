class AddAppointmentDateToInterviewAppointments < ActiveRecord::Migration
  def change
  	add_column :interview_appointments, :appointment_date, :string
  end
end
