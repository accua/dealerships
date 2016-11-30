  class Vehicle
    @@vehicles=[]
  define_method(:initialize) do |make, model, year, color|
    @year = year
    @make = make
    @model = model
    @color = color
    @id = @@vehicles.length().+(1)
  end

  define_method(:age) do
    current_year = Time.now().year
    current_year - @year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:color) do
    @color
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:worth_buying) do
    american_cars =  ["Ford", "Chevy", "GMC", "Dodge", "Lincoln"]
    american_cars.include?(@make) && (self.age() < 15)
  end

end
