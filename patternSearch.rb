#!/usr/bin/ruby

if ARGV.size == 0
	puts "No args.."
	exit
end

LIMIT = ARGV.first.to_s
x1 = LIMIT[0].chr
y1 = LIMIT[1].chr
z1 = LIMIT[2].chr.to_i

c = 0
def exitx(c)
	puts c
	exit
end

('A'..'Z').each do |x|
	('a'..'z').each do |y|
		0.upto(10) do |z|
			if ( ( x == x1 ) and ( y == y1 ) and ( z == z1 ))
				exitx(c)
			end
			c += 3
		end
	end
end


