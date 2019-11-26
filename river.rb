class River

  attr_reader :river_name

  def initialize(river_name)
    @river_name = river_name
    @fish = [@fish_1, @fish_2, @fish_3, @fish_4]
  end

  def fish_length()
    return @fish.length()
  end

end
