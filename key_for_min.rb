# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  difference =[]
  total = name_hash.sum {|key, value| value}
  name_hash.each do |k, v| 
    name_hash[k] = total - v
  end 
  puts name_hash.max_by{|k, v| k}
end

key_for_min_value({:chair => 25, :table => 85, :mattress => 450})