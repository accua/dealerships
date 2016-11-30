require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/vehicle')

# landingpage list all dealerships
get('/') do
  erb(:index)
end

# add new dealership to list of dealerships
get('/dealership/new') do
  erb(:dealership_add)
end


post("/dealership/success") do
  erb(:success_d)
end

get("/dealership/:id") do
  erb(:dealership)
end

post("/vehicle/success") do
  erb(:success_c)
end

get('/vehicle/:id') do
  erb(:vehicle)
end
