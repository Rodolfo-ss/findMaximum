arr = [5,10,15,20,30]

ee = []
max = 200
while (ee.sum < max) do
  ee << arr.sample(1).first
end

ee.pop(2)
val = max - ee.sum
pair = arr.uniq.combination(2).detect { |a, b| a + b == val }
ee << pair
ee.flatten