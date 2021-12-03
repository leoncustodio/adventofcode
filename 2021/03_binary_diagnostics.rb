
INPUT = File.readlines("03_data.txt").map(&:strip)

gamma = []
delta = []
(0..INPUT.first.length-1).each do |i|
  gamma[i] = INPUT.sum{|input|input[i].to_i} > INPUT.length / 2 ? "1" : "0"
  delta[i] = (gamma[i] == "1") ? "0" : "1"
end
puts gamma.join.to_i(2) * delta.join.to_i(2)