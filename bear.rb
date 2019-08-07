class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river, fish)
    river.allow_bear_to_get_fish(fish)
    @stomach.push(fish)
  end

  def roar
    return 'ROOOAAARRR'
  end


end
