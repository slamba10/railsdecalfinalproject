# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

user = User.new
user.name = 'Admin'
user.email = 'admin@test.com'
user.password = 'admin123'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.save!

# Make example tasks that belong to Admin
%w(finish\ project do\ homework).each do |text|
  Task.create text: text, assign_by: 1, user_id: 1
end
