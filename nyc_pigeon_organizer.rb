require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |category, hash|
    hash.each do |attribute, names|
      names.each do |name|
        if new_hash.include?(name)
          new_hash[name][category] = [attribute]
        elsif new_hash.include?(name) && new_hash[name].include?(category)
          new_hash[name][category].push(attribute)
        else
          new_hash[name] = {category => [attribute]} 
        end
      end
    end
  end
  
  binding.pry
  return new_hash
end