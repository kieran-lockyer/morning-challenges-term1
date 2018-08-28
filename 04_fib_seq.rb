# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).

fibonacci = [1, 1]

while fibonacci.count() < 100
    fibonacci.push(fibonacci[-1] + fibonacci[-2])
end

100.times do |num|
    puts "#{num + 1}. #{fibonacci[num]}"
end