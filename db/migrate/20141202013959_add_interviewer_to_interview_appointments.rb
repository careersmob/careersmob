class AddInterviewerToInterviewAppointments < ActiveRecord::Migration
  def change
  	add_column :interview_appointments, :interviewer, :string
  end
end
