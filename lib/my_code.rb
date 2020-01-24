# Your Code Here
def map(array)
  new_array = []
  i = 0
  while i < array.size do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

# [1,2,3]
#[1,2, true, "razzmatazz"]
def reduce(array, sp=nil)
  if sp
    total = sp
    i = 0
  else
    total = array[0]
    i = 1
  end
  
  while i < array.size do
    total = yield(total, array[i])
    i += 1
  end
  total
end