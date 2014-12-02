class CreateInterviewAppointments < ActiveRecord::Migration
  def change
    create_table :interview_appointments do |t|

      t.timestamps
    end
  end
end
