class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.create task_params
		@task.assign_by = current_user.id
		@task.save
		redirect_to :back
	end

	def task_params
		params.require(:task).permit(:text, :user_id)
	end

end
