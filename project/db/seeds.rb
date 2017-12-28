Participant.destroy_all
Exercise.destroy_all
Skillset.destroy_all
Skill.destroy_all



skillz = [{name:'language development', description: 'base language creation and experimentation'},
{name:'language usage', description: 'exploring word choices'},
{name:'listening', description: 'Going beyond hearing'},
{name:'body awareness', description: "exploring the body's inner voice"},
{name:'environment/situational awareness', description: 'opening up the senses to the external environment'},
{name:'spontaneity', description: 'bypassing the minds natural filters'},
{name:'status', description: 'how to affect and effect the perception of yourself and others'},
{name:'patterns', description: 'recognizing and creating patterns'},
{name:'non-verbal communication', description: 'body language'},
{name:'non- language communication', description: 'using non-language vocalizations to communicate'},
{name:'problem solving', description: 'self descriptive'},
{name:'creativity', description: 'self descriptive'},
{name:'commitment', description: 'creating a realistic reaction in characters'},
{name:'trance', description: 'include mask work'},
{name:'emotion', description: 'explore human emotions'},
{name:'public speaking', description: 'making presentations'},
{name:'1:1 communication', description: 'furthering understanding between individuals'},
{name:'character', description: 'creating and embodying a character'},
{name:'performance', description: 'stage presence and awareness'},
{name:'multi-tasking', description: 'understanding mastery of a concept to the point where it no longer needs conscious thought'},
{name:'empathy', description: 'understanding and sympathizing with other people'},
{name:'scenework', description: 'creating scenes'},
{name:'group dynamics', description: 'group mind and cooperation'},
{name:'leadership', description: 'exploring status and responsibility in a position of power'},
{name:'language dev.', description: 'advanced usage and creation of a working vocabulary'},
{name:'storytelling', description: 'combining the elements of a story with public performance'}
]
skillz.each do |ability|
  Skill.create!(
    name: ability[:name],
    description: ability[:description])
end


Participant.create!(
  size: 'pair',
  description: 'two participants'
)

Exercise.create!(
  name: 'insults',
  description: 'two participants each write a series of insults on paper. They then hand it to the other person. They then do a 2 person scene with the one caveat that they must end each line with an insult from the list. The person being insulted MUST accept the insult as being true, admit it, and then continue the scene.',
  source: 'tk',
  notes: 'players should not feel insulted as they wrote the list themselves.',
  participant_id: '1'
)

Skillset.create!(
  exercise_id: '1',
  skill_id: '1'
)

Workshop.create!(
  name: 'Taking it sloooooow',
  location: 'RCHS',
  date: '12/17',
  time: '5pm',
  notes: 'Stuff'
)

Schedule.create!(
  workshop_id: '1',
  exercise_id: '1'
)
