require ('rspec')
require ('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      pet = Tamagotchi.new("lil dragon")
      expect(pet.name()).to(eq("lil dragon"))
      expect(pet.food_level()).to(eq(100))
      expect(pet.sleep_level()).to(eq(100))
      expect(pet.activity_level()).to(eq(100))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      pet = Tamagotchi.new("lil dragon")
      pet.time_passes()
      expect(pet.food_level()).to(eq(99))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      pet = Tamagotchi.new("lil dragon")
      expect(pet.is_alive()).to(eq("It's ALIVE!!"))
    end
  end


end
