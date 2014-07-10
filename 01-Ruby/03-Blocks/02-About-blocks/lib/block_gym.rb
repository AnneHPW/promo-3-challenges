def tag(tag_name, attr = nil)
  if attr == nil
    "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end
  #TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end



def timer_for
  start_time = Time.now
  yield
  gone_time = Time.now - start_time
  #TODO:  Return time taken to execute the given block
end

def transform(element)
  yield(element)
end


  #TODO:  Simply execute the given block on element

