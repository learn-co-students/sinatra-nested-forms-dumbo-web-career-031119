class Pirate
	@@ALL = []
	attr_accessor :name, :weight, :height

	def initialize(name, weight, height)
		@name, @weight, @height = name, weight, height
		@@ALL << self
	end

	def self.all
		@@ALL
	end

end