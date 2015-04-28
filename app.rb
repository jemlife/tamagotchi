require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')

also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

post('/pet_information') do

  @name = params.fetch('pet_name')
  object_initialize = Tamagotchi.new(@name)
  object_initialize.save()
  @food_level = object_initialize.food_level()
  @sleep_level = object_initialize.sleep_level()
  @activity_level = object_initialize.activity_level()
  erb(:pet_information)
end

post ('/an_action') do

if params.fetch('an_action') == 'feed'
  tam = Tamagotchi.all().first()
  @name = tam.name()
  @action_consequence = tam.time_passes(params.fetch('an_action'))
  @food_level = tam.food_level()
end
  erb(:pet_information)
end
