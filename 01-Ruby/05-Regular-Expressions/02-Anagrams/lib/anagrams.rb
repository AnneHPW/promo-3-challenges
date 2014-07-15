def anagrams?(a_string, another_string)

  if a_string.downcase.scan(/\w/).sort == another_string.downcase.scan(/\w/).sort
    true
  else
    false
  end
end


# Anagrams are strings where only the order of the characters differs.

# * the first method `#anagrams?` should make use the ruby `sort` method.

# * use a ruby `Hash` to improve the time complexity in the second implementation `#anagrams_on_steroids?(a_string, another_string)`.
#   #TODO: implement the obvious method to test if two words are anagrams


#words_to_compare.each { |a_string, another_string| puts order }

def anagrams_on_steroids?(a_string, another_string)

 # Je créé les hashes qui vont récupérer chaque lettre et chaque occurence de lettre pour les comparer

  hash_a_string = {}
  hash_another_string = {}


  a_string.downcase.each_char do |char|#Je parcours chaqe caractère de la string
    if char =~ /\w/# je vérifie que le caractère est un alphanumérique
      if hash_a_string[char]# si oui si cette clé existe dans mon hashe
        hash_a_string[char] += 1# si oui, j'ajoute +1 à sa valeur pour compter ses occurences
      else
        hash_a_string[char] = 1# si non, je lui attribue la valeur 1
      end
    end
  end

  another_string.downcase.each_char do |char|
    if char =~ /\w/
      if hash_another_string[char]
        hash_another_string[char] += 1
      else
        hash_another_string[char] = 1
      end
    end
  end

if hash_a_string == hash_another_string
    true
  else
    false
  end
end

  #TODO: i
