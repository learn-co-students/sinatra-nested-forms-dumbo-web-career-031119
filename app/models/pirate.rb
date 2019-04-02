class Pirate

  attr_reader :name, :height, :weight

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
  end
end
