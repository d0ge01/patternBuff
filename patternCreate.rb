#!/usr/bin/ruby

if ARGV.size == 0
	puts "No args.."
	exit
end

LIMIT = ARGV.first.to_i

c = 0

('A'..'Z').each do |x|
	('a'..'z').each do |y|
		0.upto(10) do |z|
			exit if c >= LIMIT
			print x,y if ( c == LIMIT-2)
			print x if ( c == LIMIT-1 )
			print x,y,z if ( c < LIMIT-2 )
			c += 3
		end
	end
end