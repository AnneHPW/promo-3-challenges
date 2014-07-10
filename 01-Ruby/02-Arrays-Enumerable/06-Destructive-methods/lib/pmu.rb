def pmu_format!(race_array)

  race_array.map! do |x|
    i = race_array.index(x) + 1
    "#{i}-#{x}!"

  #TODO: modify the given array so that it is PMU-consistent
  end
    race_array.reverse!
  end
  puts pmu_format!(["Abricot du Laudot", "Black Caviar", "Brigadier Gerard", "Coup de Folie"])



