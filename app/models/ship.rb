class Ship

	@@ALL = []
	attr_accessor :name, :type, :booty

	def initialize(sname, type, booty)
		@name = sname
		@type = type
		@booty = booty
		@@ALL << self
	end

	def self.all
		@@ALL
	end

	def self.clear
		@@ALL = []
	end

end