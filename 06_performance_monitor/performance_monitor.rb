def measure(count = 1)
  start = Time.now
  count.times {	yield if block_given? }
  (Time.now - start) / count
end