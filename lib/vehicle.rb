class Vehicle
  define_method(:initialize) do |make, model, year, color|
    @year = year
    @make = make
    @model = model
    @color = color
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
end
