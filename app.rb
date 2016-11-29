require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get ('/') do
  @places = Place.all()
  erb(:index)
end

post('/output') do
  name = params.fetch('place')
  place = Place.new(name)
  place.save()
  erb(:output)
end
