class AddPositionToInterviewAppointments < ActiveRecord::Migration
  def change
  	add_column :interview_appointments, :position, :string
  end
end
