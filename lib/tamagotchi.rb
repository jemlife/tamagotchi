class Tamagotchi
  @@food_level = 100
  @@sleep_level = 100
  @@activity_level = 100
  @@Tam = []
  define_method(:initialize) do |name|
    @name = name
  end
  define_method(:name) do
    @name
  end
  define_method(:food_level) do
    @@food_level
  end
  define_method(:sleep_level) do
    @@sleep_level
  end

  define_method(:activity_level) do
    @@activity_level
  end
  define_method(:time_passes) do

    @@food_level -= 1
  end

  define_method(:is_alive) do

    if @@food_level >= 0
      "It's ALIVE!!"
    else
      "Worst Parent EVER!"
    end
  end

  define_method(:all) do
  @@Tam
  end

  define_method(:save) do
   @@Tam.push(self)
 end
end
