require 'json'

def parse_some_age json, child_name
  case JSON.parse(json, symbolize_names: true)
    in {name: 'Alice', children: [{name: ^child_name, age: age}]} if age < 5
      p "Alice's kid, #{child_name}, is only #{age} years old"
    in {name: 'Alice', children: [{name: ^child_name, age: age}]}
      p "Alice's kid, #{child_name}, is #{age} years old"
    else
      p "No Alice with a child named #{child_name}"
  end
end

parse_some_age '{ "name": "Alice", "children": [{ "name": "Brenda", "age": 20 }] }', 'Brenda'
# => Alice's kid, Brenda, is 20 years old
parse_some_age '{ "name": "Alan", "children": [{ "name": "Bob", "age": 20 }] }', 'Blake'
# => No Alice with a child named Blake
parse_some_age '{ "name": "Alice", "children": [{ "name": "Bob", "age": 6 }] }', 'Bob'
# => Alice's kid, Bob, is 6 years old
parse_some_age '{ "name": "Alice", "children": [{ "name": "Bob", "age": 3 }] }', 'Bob'
# => Alice's kid, Bob, is only 3 years old
