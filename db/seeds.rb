# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#delete everythind that is in the database
Complaint.destroy_all
Student.destroy_all

#example seed data, but isn't complete!!

@Wenwen = Reporter.create(
  first_name: "Wenwen",
  last_name: "Xie",
  a_number: 12345678,
  school_email: "wenwenxie@hawk.iit.edu",
)

@Jiayu = Reporter.create(
  first_name: "JiaYu",
  last_name: "Huang",
  a_number: 01234567,
  school_email: "jiayuhuang@hawk.iit.edu",
  complaints: [@table]
)

@Jessica = Reporter.create(
  first_name: "Jessica",
  last_name: "DeJesus",
  a_number: 01234568,
  school_email: "jessicadejesus@hawk.iit.edu",
  complaints: [@printer]
)


Complaints.create(
  {
    ##need a title for complaints!
    ##need to change date type
    date: 2019-01-15 12:50:38,
    location: 'Pritzker Science Center',
    department: 'Maintenance',
    description: 'The bathroom on the third floor for the women is broken',
    reporters: 'Wenwen'
  },
  {
    ##need a title for complaints!
    ##need to change date type
    date: 2019-01-20 13:50:38,
    location: 'Perlstein Hall',
    department: 'Maintenance',
    description: 'The table in Room 104 is broken',
    reporters: 'Jiayu'
  },
  {
    ##need a title for complaints!
    ##need to change date type
    date: 2019-02-14 12:50:38,
    location: 'McCormick Student Village',
    department: 'Technology',
    description: 'The printer is out of toner',
    reporters: 'Jessica'
  }
)
