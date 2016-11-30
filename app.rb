require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/vehicle')
require('./lib/dealership')

# landingpage list all dealerships
get('/') do
  @dealerships = Dealership.all()
  erb(:index)
end

# add new dealership to list of dealerships
get('/dealership/new') do
  erb(:dealership_add)
end


post("/dealership/success") do
  name = params.fetch("dealership_name")
  Dealership.new(name).save()
  @dealerships = Dealership.all()
  erb(:success_d)
end

get("/dealership/:id") do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

post("/success_c") do
  make = params.fetch("make")
  model = params.fetch("model")
  year = params.fetch("year")
  color = params.fetch("color")
  @vehicle = Vehicle.new(make, model, year, color)
  @vehicle.save()
  @dealership = Dealership.find(params.fetch("dealership_id").to_i())
  @dealership.add_vehicle(@vehicle)
  erb(:dealership)
end

get('/vehicles/:id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i())
  erb(:vehicle)
end
