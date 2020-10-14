# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil 
  else
    new_hash = {}
      total = name_hash.sum {|key, value| value}
      name_hash.each do |k, v| 
      name_hash[k] = total - v
      end 
    new_hash = name_hash.max_by{|k, v| v}
    puts new_hash[0]
    return new_hash [0]
  end
end
key_for_min_value({:chair => 25, :table => 85, :mattress => 450})