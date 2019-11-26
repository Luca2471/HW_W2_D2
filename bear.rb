class Bear

  attr_reader :bear_name, :type

  def initialize(bear_name, type)
    @bear_name = bear_name
    @type = type
    @stomach = []
  end

  def bear_name
   return @bear_name
  end

  def bear_can_roar
    return "Wocka Wocka"
  end

  def bear_type
    return @bear.type
  end

  def fish_count
    return @stomach.length
  end

  def eats(fish)
    @stomach << fish
  end

end
