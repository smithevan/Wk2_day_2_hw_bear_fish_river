class River

  attr_reader :name

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def number_of_fish
    @fish.length
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end



end
