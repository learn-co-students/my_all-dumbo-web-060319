require "pry"

# Build a custom .all? method - returns true if all the elements meet a condition

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
  if block_return_values.include?(false)
    return false
  else
    return true
  end
end
