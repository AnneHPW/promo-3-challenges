require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  students << name

  # TODO: Add the name we just gotto the students array

end while name != ""

students = wagon_sort(students)
students.delete("")
effectif = students.size

table_wolast = students.slice(0, effectif-1)

list_wolast = table_wolast.join (", ")

last = students.last.to_s

puts "Congratulations! Your Wagon has #{effectif} students:
 -  #{list_wolast} and #{last}."

#students = wagon_sort(student)
#nombre_tableau = students.size
#return nombre_tableau

#return wagon_sort(students)
# TODO: Call `wagon_sort` method and display the sorted student list
