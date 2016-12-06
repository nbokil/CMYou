# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Student Users
User.create! :username => 'nbokil@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'kunalsin@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'hzz@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'a@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'b@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'c@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'd@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'e@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'f@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'g@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'h@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'i@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'j@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'k@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'l@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'm@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'n@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'o@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'p@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'q@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'r@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 's@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 't@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'u@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'v@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'w@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'x@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'y@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true
User.create! :username => 'z@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'student', :active => true

# Create RA
User.create! :username => 'ra@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'ra', :active => true

# Create Admin
User.create! :username => 'admin@andrew.cmu.edu', :password => 'secret', :password_confirmation => 'secret', :role => 'admin', :active => true

# Create Students
student_list = [
  [ "Nikita", "Bokil", "Female", "Morewood E-Tower", 2020, 1, true ],
  [ "Kunal", "Sinha", "Male", "Morewood E-Tower", 2020, 2, true ],
  [ "Hanson", "Zeng", "Male", "Morewood E-Tower", 2020, 3, true ],
  [ "A", "Last", "Female", "Morewood E-Tower", 2020, 4, true ],
  [ "B", "Last", "Female", "Morewood E-Tower", 2020, 5, true ],
  [ "C", "Last", "Female", "Morewood E-Tower", 2020, 6, true ],
  [ "D", "Last", "Female", "Morewood E-Tower", 2020, 7, true ],
  [ "E", "Last", "Female", "Morewood E-Tower", 2020, 8, true ],
  [ "F", "Last", "Female", "Morewood E-Tower", 2020, 9, true ],
  [ "G", "Last", "Female", "Morewood E-Tower", 2020, 10, true ],
  [ "H", "Last", "Female", "Morewood E-Tower", 2020, 11, true ],
  [ "I", "Last", "Female", "Morewood E-Tower", 2020, 12, true ],
  [ "J", "Last", "Female", "Morewood E-Tower", 2020, 13, true ],
  [ "K", "Last", "Female", "Morewood E-Tower", 2020, 14, true ],
  [ "L", "Last", "Female", "Morewood E-Tower", 2020, 15, true ],
  [ "M", "Last", "Female", "Morewood E-Tower", 2020, 16, true ],
  [ "N", "Last", "Female", "Morewood E-Tower", 2020, 17, true ],
  [ "O", "Last", "Male", "Morewood E-Tower", 2020, 18, true ],
  [ "P", "Last", "Male", "Morewood E-Tower", 2020, 19, true ],
  [ "Q", "Last", "Male", "Morewood E-Tower", 2020, 20, true ],
  [ "R", "Last", "Male", "Morewood E-Tower", 2020, 21, true ],
  [ "S", "Last", "Male", "Morewood E-Tower", 2020, 22, true ],
  [ "T", "Last", "Male", "Morewood E-Tower", 2020, 23, true ],
  [ "U", "Last", "Male", "Morewood E-Tower", 2020, 24, true ],
  [ "V", "Last", "Male", "Morewood E-Tower", 2020, 25, true ],
  [ "W", "Last", "Male", "Morewood E-Tower", 2020, 26, true ],
  [ "X", "Last", "Male", "Morewood E-Tower", 2020, 27, true ],
  [ "Y", "Last", "Male", "Morewood E-Tower", 2020, 28, true ],
  [ "Z", "Last", "Male", "Morewood E-Tower", 2020, 29, true ]
]

student_list.each do |first_name, last_name, gender, dorm, class_year, user_id, active|
  Student.create( first_name: first_name, last_name: last_name, gender: gender, dorm: dorm, class_year: class_year, user_id: user_id, active: active )
end

# Create Interests for Students
interest_list = [
  [ "dance", 1 ],
  [ "dance", 2 ],
  [ "dance", 3 ],
  [ "dance", 4 ],
  [ "dance", 5 ],
  [ "dance", 6 ],
  [ "dance", 7 ],
  [ "dance", 8 ],
  [ "dance", 9 ],
  [ "dance", 10 ],
  [ "dance", 11 ],
  [ "dance", 12 ],
  [ "dance", 13 ],
  [ "dance", 14 ],
  [ "dance", 15 ],
  [ "dance", 16 ],
  [ "dance", 17 ],
  [ "dance", 18 ],
  [ "dance", 19 ],
  [ "dance", 20 ],
  [ "dance", 21 ],
  [ "dance", 22 ],
  [ "dance", 23 ],
  [ "dance", 24 ],
  [ "dance", 25 ],
  [ "dance", 26 ],
  [ "dance", 27 ],
  [ "dance", 28 ],
  [ "dance", 29 ],
  [ "tennis", 1 ],
  [ "tennis", 2 ],
  [ "tennis", 3 ],
  [ "tennis", 4 ],
  [ "tennis", 5 ],
  [ "tennis", 6 ],
  [ "tennis", 7 ],
  [ "tennis", 8 ],
  [ "tennis", 9 ],
  [ "tennis", 10 ],
  [ "tennis", 11 ],
  [ "tennis", 12 ],
  [ "tennis", 13 ],
  [ "tennis", 14 ],
  [ "tennis", 15 ],
  [ "singing", 16 ],
  [ "singing", 17 ],
  [ "singing", 18 ],
  [ "singing", 19 ],
  [ "singing", 20 ],
  [ "singing", 21 ],
  [ "singing", 22 ],
  [ "singing", 23 ],
  [ "singing", 24 ],
  [ "singing", 25 ],
  [ "singing", 26 ],
  [ "singing", 27 ],
  [ "singing", 28 ],
  [ "singing", 29 ]
]

interest_list.each do |name, student_id|
  Interest.create( name: name, student_id: student_id )
end

