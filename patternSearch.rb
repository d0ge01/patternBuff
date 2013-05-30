#!/usr/bin/ruby

if ARGV.size == 0
	puts "No args.."
	exit
end

LIMIT = ARGV.first.to_s
x1 = LIMIT[0].chr
y1 = LIMIT[1].chr
z1 = LIMIT[2].chr.to_i
BIGA = []
CORT = []
c = 0
cont = []
('A'..'Z').each do |x|
	BIGA << x
end

('a'..'z').each do |x|
	CORT << x
end

bigalpha = BIGA[0..(BIGA.index(x1))]

bigalpha.each do |x|
	CORT.each do |y|
		0.upto(10) do |z|
			cont << "#{x}#{y}#{z}"
		end
	end
end

puts (cont.index("#{x1}#{y1}#{z1}")+1) * 3
