Participant.destroy_all
Exercise.destroy_all
Work.destroy_all
Skillset.destroy_all

Skillset.create!(

  name: "group_dynamics",
  description: "Illustrates the different dynamics in play among people working in a group")

Participant.create!(
  size: "pair",
  description: "two participants")

Exercise.create!(
  name: "insults",
  description: "two participants each write a series of insults on paper. They then hand it to the other person. They then do a 2 person scene with the one caveat that they must end each line with an insult from the list. The person being insulted MUST accept the insult as being true, admit it, and then continue the scene.",
  source: "tk",
  notes: "players should not feel insulted as they wrote the list themselves.", participant_id: "1"
  )

Schedule.create!

Work.create!(
  exercise_id: "1",
  skillset_id: "1"
  )

Workshop.create!(
  name: "Taking it sloooooow",
  location: "RCHS",
  date: "12/17",
  time: "5pm",
  notes: "Stuff"
 )

Schedule.create!(
  workshop_id: "1",
  exercise_id: "1")
