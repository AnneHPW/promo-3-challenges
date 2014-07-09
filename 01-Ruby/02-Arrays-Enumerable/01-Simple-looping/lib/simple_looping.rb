def sum_with_while(min,max)
  i = min
  somme = 0
  while i <= max do
  somme = somme + i
  i += 1
  end
  return somme
end

#TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure

def sum_with_for(min,max)
  i = min
  somme = 0
  table = Array(min..max)
  for i in table
  somme = somme + i
  i += 1
  end
  return somme
  end


#TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure


def sum_recursive(min,max)
  raise ArgumentError if min > max
  return min if min == max
  min + sum_recursive(min+1, max)
end

  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself


