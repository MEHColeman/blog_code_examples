require 'json'

def parse_specific_age json
  case JSON.parse(json, symbolize_names: true)
    in {name: 'Alice', children: [{name: 'Bob', age: age}]} if age < 5
      p "Alice's kid, Bob, is only #{age} years old"
    in {name: 'Alice', children: [{name: 'Bob', age: age}]}
      p "Alice's kid, Bob, is #{age} years old"
    else
      p 'No Alice with a child named Bob'
  end
end

parse_specific_age '{ "name": "Alice", "children": [{ "name": "Brenda", "age": 20 }] }'
# => No Alice with a child named Bob
parse_specific_age '{ "name": "Alan", "children": [{ "name": "Bob", "age": 20 }] }'
# => No Alice with a child named Bob
parse_specific_age '{ "name": "Alice", "children": [{ "name": "Bob", "age": 6 }] }'
# => Alice's kid, Bob, is 6 years old
parse_specific_age '{ "name": "Alice", "children": [{ "name": "Bob", "age": 3 }] }'
# => Alice's kid, Bob, is only 3 years old
