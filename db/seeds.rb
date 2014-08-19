# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p 'Create user zeljko, password zeljko123'
User.create!(id: 1,
            email: 'zeljko@z-ware.fi',
            password: 'zeljko123',
            password_confirmation: 'zeljko123',
           )

