require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

post('/pet_name')

@name = params.fetch('pet_name')
object_initialize = Tamagotchi.new(@name)
@food_level = object_initialize.food_level()

end
