def fibs(n)
  counter = 0
  i=0
  j=1
  fibs_array = []
  while counter < n do
    iCopy = i
    fibs_array << j
    i = j
    j = j + iCopy
    counter += 1
  end
  fibs_array
end

def fibs_rec(n)
  n < 1 ? [] : n == 1 ? [1] : n == 2 ? [1,1] : fibs_rec(n-1) << (fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2])
end

(1..16).each do |i|
  print fibs(i), "\n"
end
(1..16).each do |i|
    print fibs_rec(i), "\n"
end
