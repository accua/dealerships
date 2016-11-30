require("rspec")
require("dealership")

describe(Dealership) do
  # before() do
  #   Dealership.clear()
  # end

  describe("#name") do
    it("returns the name of the dealership") do
      test_dealership = Dealership.new("Andrew's Used Cars")
      expect(test_dealership.name()).to(eq("Andrew's Used Cars"))
    end
  end

  describe("#id") do
    it("returns the id of the dealership") do
      test_dealership = Dealership.new("Andrew's Used Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe("#cars") do
    it("initially returns an empty array of cars for the dealership") do
      test_dealership = Dealership.new("Andrew's Used Cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a dealership to the array of saved dealerships") do
      test_dealership = Dealership.new("Andrew's Used Cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe(".clear") do
    it("empties out the saved dealership array") do
      Dealership.new("Andrew's Used Cars")
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns dealership from the initialized dealership array by it's id number") do
      test_dealership = Dealership.new("Andrew's Used Cars")
      test_dealership.save()
      test_dealership2 = Dealership.new("Marty's Sweet Rides")
      test_dealership2.save()
      expect(Dealership.find(test_dealership.id())).to(eq(test_dealership))
    end
  end
end
