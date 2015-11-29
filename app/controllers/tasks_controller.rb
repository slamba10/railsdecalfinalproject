class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.create task_params
		@task.user = current_user
		@task.save
		redirect_to :back
	end

	def task_params
		params.require(:task).permit(:text)
	end
	
end
