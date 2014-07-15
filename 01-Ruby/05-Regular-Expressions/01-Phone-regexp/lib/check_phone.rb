def french_phone_number?(phone_number)

if  phone_number =~ /^(0|\+33|0033)\D?[1-9](\D?\d\d){4}$/
  true
else
  false
end
end



