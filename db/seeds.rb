User.create!(
	email: "test@test.com",
	password: "pakaya",
	password_confirmation: "pakaya",
	name: "Admin User",
	roles: "site_admin"
)

puts "1 admin user created"

User.create!(
	email: "test2@test.com",
	password: "pakaya",
	password_confirmation: "pakaya",
	name: "Regular User"
)

puts "1 regular user created"


3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",				# This line creates a new id#, everytime it iterates through the loop!!!
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",					# This line creates a new id#, everytime it iterates through the loop!!!
		percent_utilized: 15
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",	# This line creates a new id#, everytime it iterates through the loop!!!
		subtitle: "Ruby on Rails",
		body: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",	# This line creates a new id#, everytime it iterates through the loop!!!
		subtitle: "Angular",
		body: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200"
	)
end
puts "9 portfolio items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
	)
end
puts "3 Technology created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)