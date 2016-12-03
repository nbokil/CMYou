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


organization_list = [
  [ "CMU Bhangra", "Founded in 2006, the purpose of CMU Bhangra is to provide opportunity and instruction for aspiring dancers. We seek to encourage, advance, and promote the art of Bhangra dancing (Punjabi folk dance) through various performances and competitions, on and off campus, and through instructive workshops.", "https://www.youtube.com/watch?v=mMiiWLM7bZ4", true ],
  [ "CMU Raasta", "CMU Raasta is a dance team committed to promoting Indian culture across campus. Through the West Indian folk dance garba-raas, we aim to spread awareness of our traditions. Based on formations and high energy, Raas involves twirling sticks called dandiyas. By performing on and off campus at dance competitions throughout the nation, we wish to exhibit the talent and diversity of Carnegie Mellon students.", "https://www.youtube.com/watch?v=TXXEj59xyeQ", true ],
  [ "Dancers' Symposium", "Dancers' Symposium provides an open and supportive environment to further the exposure of dance, music, student choreography, and student performance at Carnegie Mellon University.", "https://www.youtube.com/watch?v=-zpNQq-VOWM", true ],
  [ "Ballroom Dance Club", "Our main goal is to bring ballroom dancing to the Pittsburgh community through offering lessons, representing CMU at collegiate and national dance competitions, and performing at various events. Both students and non-students are welcome to join!", "", true ],
  [ "CMU Sahara", "The objective of CMU Sahara is to bring together and provide an opportunity for dancers across CMU to showcase their talent and discover a sense of community through collaborative team effort via the collective passion for Bollywood dance.", "", true],
  [ "Bhangra in the Burgh", "The Bhangra in the Burgh Executive Committee of Carnegie Mellon University is proud to present our tenth annual bhangra competition on November 19th, 2016 at Soldiers and Sailors Memorial.", "", true],
  [ "CMU Quidditch Club", "Founded in 2011, CMU Quidditch is a group of athletes and Harry Potter fans dedicated to the advancement of Quidditch at CMU (yes, seriously). We are a USQ official member team, and we practice and attend tournaments across the country all year long.", "", true],
  [ "CMU Tennis Club", "We are part of Carnegie Mellon's Club Sports program. We are a student run organization whose primary aim is to represent Carnegie Mellon University at competitive tennis events.", "", true],
  [ "Treblemakers", "The Treblemakers is a co-ed a cappella group formed to promote a supportive community for campus singers. We love to sing an eclectic range of music, and are always looking to spread music to the CMU community.", "https://www.youtube.com/watch?v=rsHAuRhhsG4", true],
  [ "Soundbytes", "Co-ed a cappella group. Founded in 1996.", "https://www.youtube.com/watch?v=kiqX6PE7AiM", true]

]

organization_list.each do |name, description, video, active|
  Organization.create( name: name, description: description, video: video, active: active )
end

position_list = [
	[ "Campus Team", 5, "The campus team is an integral part of our community and performs at several on-campus gigs and one competition in the spring.", 1],
	[ "Competitive Team", 12, "The competitive team is a more serious commitment to the team. We travel across the country and perform at several competitions, heavily in the spring.", 1],
	[ "Competitive Team", 12, "CMU Raasta has a competitive team that travels to several competitions. We recently won first place at several comps!", 2],
	[ "Dancer", 5, "We host tryouts for all of our dances at DS Auditions. You will get chosen to dances based on your abilities!", 3],
	[ "Choreographer", 7, "Audtions to be a choreographer are hosted at the beginning of the semester. Choreographers are responsible to choose dancers and lead practices.", 3],
	[ "Dancer", 5, "The Ballroom club is a lot of fun! We encourage everyone to try and are very open to teaching new dancers.", 4],
	[ "Dancer", 7, "All dancers on our team dance at all events. We usually practice in the evenings.", 5],
	[ "Freshman Representative", 4, "Being a FREP is the best way to have an executive board position on campus at the start of the semester! We encourage everyone to interview, it's a great way to make friends.", 6],
	[ "Player", 4, "The Quidditch team meets on Wednesdays at 6:00pm.", 7],
	[ "Club Player", 5, "This is the club team, we play casually and have a competition at the end of the semester", 8],
	[ "Singer", 6, "We have practices weekly. Please audition and we can determine your exact position (tenor, soprano, bass).", 9],
	[ "Singer", 6, "We have practices weekly. Please audition and we can determine your exact position.", 10]
]

position_list.each do |name, hour_commitment, description, organization_id|
  Position.create( name: name, hour_commitment: hour_commitment, description: description, organization_id: organization_id )
end

tag_list = [ "dance", "tennis", "singing" ]

tag_list.each do |name|
  Tag.create( name: name )
end

orgtag_list = [
	[ 1, 1 ],
	[ 2, 1 ],
	[ 3, 1 ],
	[ 4, 1 ],
	[ 5, 1 ],
	[ 6, 1 ],
	[ 7, 2 ],
	[ 8, 2 ],
	[ 9, 3 ],
	[ 10, 3]
]

orgtag_list.each do |organization_id, tag_id|
  OrgTag.create( organization_id: organization_id, tag_id: tag_id )
end