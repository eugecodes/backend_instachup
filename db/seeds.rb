# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.where(name:"Administrador").first_or_create
Role.where(name: "Usuario").first_or_create
User.where(email: "admin@engranedigital.com").first_or_create
admin = User.where(email:"admin@engranedigital.com").try(:first)
if !admin
	admin = User.create(email:"admin@engranedigital.com",password:12345678,role_id:1)
end
admin.confirm!