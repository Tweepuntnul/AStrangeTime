require 'erb'

class Doors
  attr_accessor :outcome

	def initialize
		@outcome = %w{ACCESS DENIED}.sample
		puts @outcome
	end
end

Doors.new
