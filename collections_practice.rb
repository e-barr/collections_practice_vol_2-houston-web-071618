# your code goes here
require 'pry'
def begins_with_r(words)
  !words.any? { |word| word.downcase[0] != "r"}
end

def contain_a(words)
  words.select { |word| word.include?("a")}
end

def first_wa(words)
  words.each do |word|
    return word if word.downcase[0] == "w" && word.downcase[1] == "a"
  end
end

def remove_non_strings(words)
  words.select { |word| word.class == String }
end

def count_elements(words)
  counted = []

  words.uniq.each do |pair|
    pair[:count] = words.count(pair)
    counted << pair
  end

  counted
end

def merge_data(keys, data)
  merged = []
  keys.each do |key|
    data.each do |data_set|
      to_add = key.merge(data_set[key.values.first])
      merged << to_add
    end
  end

  merged
end

def find_cool(people)
  people.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized = {}
  schools.each do |school|
    key = school.last[:location]
    if organized[key]
      organized[key] << school.first
    else
      organized[key] = [school.first]
    end
  end

  organized
end
