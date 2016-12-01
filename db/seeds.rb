# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

organization_list = [
  [ "CMU Bhangra", "Founded in 2006, the purpose of CMU Bhangra is to provide opportunity and instruction for aspiring dancers. We seek to encourage, advance, and promote the art of Bhangra dancing (Punjabi folk dance) through various performances and competitions, on and off campus, and through instructive workshops.", "https://www.youtube.com/watch?v=mMiiWLM7bZ4", true ],
  [ "CMU Raasta", "CMU Raasta is a dance team committed to promoting Indian culture across campus. Through the West Indian folk dance garba-raas, we aim to spread awareness of our traditions. Based on formations and high energy, Raas involves twirling sticks called dandiyas. By performing on and off campus at dance competitions throughout the nation, we wish to exhibit the talent and diversity of Carnegie Mellon students.", "https://www.youtube.com/watch?v=TXXEj59xyeQ", true ],
  [ "Dancers' Symposium", "Dancers' Symposium provides an open and supportive environment to further the exposure of dance, music, student choreography, and student performance at Carnegie Mellon University.", "https://www.youtube.com/watch?v=-zpNQq-VOWM", true ],
  [ "Ballroom Dance Club", "Our main goal is to bring ballroom dancing to the Pittsburgh community through offering lessons, representing CMU at collegiate and national dance competitions, and performing at various events. Both students and non-students are welcome to join!", "", true ],
  [ "CMU Sahara", "The objective of CMU Sahara is to bring together and provide an opportunity for dancers across CMU to showcase their talent and discover a sense of community through collaborative team effort via the collective passion for Bollywood dance.", "", true],
  [ "Bhangra in the Bhangra", "The Bhangra in the Burgh Executive Committee of Carnegie Mellon University is proud to present our tenth annual bhangra competition on November 19th, 2016 at Soldiers and Sailors Memorial.", "", true],
  [ "CMU Quidditch Club", "Founded in 2011, CMU Quidditch is a group of athletes and Harry Potter fans dedicated to the advancement of Quidditch at CMU (yes, seriously). We are a USQ official member team, and we practice and attend tournaments across the country all year long.", "", true],
  [ "CMU Tennis Club", "We are part of Carnegie Mellon's Club Sports program. We are a student run organization whose primary aim is to represent Carnegie Mellon University at competitive tennis events.", "", true],
  [ "Treblemakers", "The Treblemakers is a co-ed a cappella group formed to promote a supportive community for campus singers. We love to sing an eclectic range of music, and are always looking to spread music to the CMU community.", "https://www.youtube.com/watch?v=rsHAuRhhsG4", true],
  [ "Soundbytes", "Co-ed a cappella group. Founded in 1996.", "https://www.youtube.com/watch?v=kiqX6PE7AiM", true],

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