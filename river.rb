class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

def add_fish(new_fish)
  @fish.push(new_fish)
end

def allow_bear_to_get_fish(fish)
  if @fish.count > 0
    @fish.delete(fish)
  end
  return @fish.count
end

def fish_count
  @fish.length
end


end
