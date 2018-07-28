# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'mary', last_name: 'smith', email: 'mary.smith@gmail.com', status: 'active')
User.create(first_name: 'john', last_name: 'johnson', email: 'john.johnson@yahoo.com', status: 'inactive')
User.create(first_name: 'sam', last_name: 'andrews', email: 'sam1234@msn.com', status: 'active')
User.create(first_name: 'matthew', last_name: 'freeman', email: 'mfreeman@gmail.com', status: 'inactive')
User.create(first_name: 'Natalie', last_name: 'Berry', email: 'natberry@hotmail.com', status: 'active')

Account.create(user_id: 1, utility: 'pepco', account_type:'residential', account_number:'2349-23422')
Account.create(user_id: 2, utility: 'duke_energy', account_type:'commercial', account_number:'43332234')
Account.create(user_id: 2, utility: 'duke_energy', account_type:'residential', account_number:'86940293')
Account.create(user_id: 3, utility: 'dominion', account_type:'residential', account_number:'9565-434-43534')
Account.create(user_id: 3, utility: 'dominion', account_type:'residential', account_number:'9565-430-54933')
Account.create(user_id: 4, utility: 'pepco', account_type:'commercial', account_number:'8654-35434')
Account.create(user_id: 5, utility: 'dominion', account_type:'residential', account_number:'9566-938-21493')

Bill.create(account_id: 1, start_date: '2018-01-15', end_date: '2018-02-16', usage: 638, charges: 76.74, status:'paid')
Bill.create(account_id: 1, start_date:	'2018-02-17', end_date:	'2017-03-17',	usage: 575, charges: 65.11, status:	'paid')
Bill.create(account_id: 1,	start_date: '2018-03-18', end_date:	'2017-04-15', usage: 677,	charges: 85.89, status:	'paid')
Bill.create(account_id: 1,	start_date: '2018-04-16', end_date:	'2017-05-17', usage: 926,	charges: 106.56, status: 'paid')
Bill.create(account_id: 1,	start_date: '2018-05-18', end_date:	'2017-06-17', usage: 1045, charges: 141.92, status: 'unpaid')
Bill.create(account_id: 2,	start_date: '2017-12-08', end_date:	'2018-01-07', usage: 229,	charges: 28.44, status: 'paid')
Bill.create(account_id: 2,	start_date: '2018-01-08', end_date:	'2018-02-07', usage: 301,	charges: 35.51, status: 'paid')
Bill.create(account_id: 2,	start_date: '2018-02-08', end_date:	'2018-03-07', usage: 280,	charges: 31.99, status: 'paid')
Bill.create(account_id: 2,	start_date: '2018-03-08', end_date:	'2018-04-07', usage: 324,	charges: 36.75, status: 'paid')
Bill.create(account_id: 2,	start_date: '2018-04-08', end_date:	'2018-05-07', usage: 219,	charges: 27.47, status: 'unpaid')
Bill.create(account_id: 3,	start_date: '2017-12-08', end_date:	'2018-01-07', usage: 92,	charges: 10.53, status: 'paid')
Bill.create(account_id: 3,	start_date: '2018-01-08', end_date:	'2018-02-07', usage: 427,	charges: 55.38, status: 'paid')
Bill.create(account_id: 3,	start_date: '2018-02-08', end_date:	'2018-03-07', usage: 344,	charges: 40, status: 'paid')
Bill.create(account_id: 3,	start_date: '2018-03-08', end_date:	'2018-04-07', usage: 331,	charges: 38.85, status: 'paid')
Bill.create(account_id: 3,	start_date: '2018-04-08', end_date:	'2018-05-07', usage: 210,	charges: 26.25, status: 'unpaid')
Bill.create(account_id: 4,	start_date: '2018-04-15', end_date:	'2018-06-17', usage: 1527,	charges: 240.18, status: 'unpaid')
Bill.create(account_id: 5,	start_date: '2018-02-10', end_date:	'2018-03-09', usage: 834,	charges: 113.98, status: 'paid')
Bill.create(account_id: 5,	start_date: '2018-03-10', end_date:	'2018-04-10', usage: 785,	charges: 94.68, status: 'paid')
Bill.create(account_id: 5,	start_date: '2018-04-11', end_date:	'2018-05-09', usage: 815,	charges: 99.23, status: 'paid')
Bill.create(account_id: 5,	start_date: '2018-05-10', end_date:	'2018-06-11', usage: 1123,	charges: 157.32, status: 'paid')
Bill.create(account_id: 6,	start_date: '2017-09-02', end_date:	'2017-10-01', usage: 345,	charges: 47.34, status: 'paid')
Bill.create(account_id: 6,	start_date: '2017-10-02', end_date:	'2017-11-01', usage: 642,	charges: 91.6, status: 'paid')
Bill.create(account_id: 6,	start_date: '2017-11-02', end_date:	'2017-12-01', usage: 934,	charges: 128.93, status: 'paid')
Bill.create(account_id: 7,	start_date: '2017-11-24', end_date:	'2017-12-22', usage: 152,	charges: 28.14, status: 'paid')
Bill.create(account_id: 7,	start_date: '2017-12-23', end_date:	'2018-01-21', usage: 113,	charges: 15.82, status: 'paid')
Bill.create(account_id: 7,	start_date: '2018-01-22', end_date:	'2018-02-23', usage: 127,	charges: 18.11, status: 'paid')
Bill.create(account_id: 7,	start_date: '2018-02-24', end_date:	'2018-03-24', usage: 112,	charges: 13.19, status: 'paid')
Bill.create(account_id: 7,	start_date: '2018-03-25', end_date:	'2018-04-22', usage: 465,	charges: 52.22, status: 'paid')
Bill.create(account_id: 7,	start_date: '2018-04-23', end_date:	'2018-05-24', usage: 523,	charges: 61.03, status: 'paid')
Bill.create(account_id: 7,	start_date: '2018-05-25', end_date:	'2018-06-24', usage: 545,	charges: 67.57, status: 'unpaid')

ApiKey.create
