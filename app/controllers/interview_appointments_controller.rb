class InterviewAppointmentsController < ApplicationController
	def new
		@interview_appointment = InterviewAppointment.new
	end

	def create
		@interview_appointment = InterviewAppointment.new(interview_params)
		puts @interview_appointment.inspect
		@interview_appointment.save
		flash[:success] = 'Success!'  
    	redirect_to interview_appointment_path(:id => 1)
	end

	def show
		@interviewer = InterviewAppointment.last

	end

	private

	def interview_params
  		params.require(:interview_appointment).permit(:id, :interviewer, :appointment_date, :appointment_time, :position)
	end
end
