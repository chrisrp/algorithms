a = [ 5, 2, 4, 6, 1, 3 ]

a.each_index do |j|
  next if j < 1

  key = a[j]
  i = j - 1
  while i > -1 && a[i] > key do
    a[i + 1] = a[i]
    i = i - 1
  end

  a[i + 1] = key
end

#should be oredered
a.each { |x| puts x }
