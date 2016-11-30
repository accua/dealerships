require("rspec")
require("vehicle")

describe(Vehicle) do
  describe("#age") do
    it("returns the age of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "Red")
      expect(test_vehicle.age()).to(eq(16))
    end
  end

  describe("#make") do
    it("return the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "Red")
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("return the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "Red")
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#color") do
    it("return the color of the vehicle") do
      test_vehicle = Vehicle.new("Toyata", "Prius", 2000, "Red")
    end
  end

end
