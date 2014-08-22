# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p 'Create admin zeljko, password zeljko123, and a user kata'
User.create! email: 'zeljko@z-ware.fi',
             password: 'zeljko123',
             password_confirmation: 'zeljko123',
             is_admin: true

User.create! email: 'kata@iloisettassut.fi',
             password: 'zeljko123',
             password_confirmation: 'zeljko123'


p 'Create sample categories'
Category.create! code: 'SpU 22',
                 description: 'Avoin sprintti 22km',
                 length: 22
Category.create! code: 'Sp8 17',
                 description: '8 koiran sprintti 17km',
                 length: 17
Category.create! code: 'Sp6 13,5',
                 description: '6 koiran sprintti 13,5km',
                 length: 13.5
Category.create! code: 'Sp4 8',
                 description: '4 koiran sprintti 8km',
                 length: 8
Category.create! code: 'Sp4J 8',
                 description: 'Nuoret 14-16 v. 4 koiran sprintti 8km',
                 length: 8
