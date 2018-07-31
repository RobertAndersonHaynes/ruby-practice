def filter_list(l)
  new_list = []
  l.each do |item|
    if item.class == Fixnum
    new_list << item
    end
  end
  new_list
end

# best practice

def filter_list(l)
  l.reject { |x| x.is_a? String }
end
