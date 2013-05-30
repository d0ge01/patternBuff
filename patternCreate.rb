#!/usr/bin/ruby

if ARGV.size == 0
	puts "No args.."
	exit
end

LIMIT = ARGV.first.to_i
BIGA = []
CORT = []
c = 0
str = ""
('A'..'Z').each do |x|
	BIGA << x
end

('a'..'z').each do |x|
	CORT << x
end

BIGA.each do |x|
	CORT.each do |y|
		0.upto(10) do |z|
			exit if c >= LIMIT
			print x,y if ( c == LIMIT-2)
			print x if ( c == LIMIT-1 )
			print x,y,z if ( c < LIMIT-2 )
			c += 3
		end
	end
end