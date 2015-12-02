class Task < ActiveRecord::Base
	validates :assign_by, presence: true
	belongs_to :user
end
