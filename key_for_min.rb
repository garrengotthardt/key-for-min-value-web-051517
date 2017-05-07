# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#def key_for_min_value(name_hash)
#  low_value = 10000000000000000000
#  name_for_low_value = nil
#  name_hash.each do |name, value|
#    if value < low_value
#      low_value = value
#      name_for_low_value = name
#    else
#      low_value = low_value
#    end
#  end
#  name_for_low_value
#end

def key_for_min_value(name_hash)
  low_value = nil
  name_for_low_value = nil
  name_hash.each do |name, value|
    if low_value == nil
      low_value = value
      name_for_low_value = name
    elsif value <= low_value
      low_value = value
      name_for_low_value = name
    else
      low_value = low_value
    end
  end
  name_for_low_value
end
