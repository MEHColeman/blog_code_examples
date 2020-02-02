def keyword_argument_method(foo: 'default')
  p foo
end

def hash_argument_method(h={foo: 'default'})
  p h[:foo]
end

def long_keyword_argument_method(_, foo: 'default')
  p foo
end

def long_hash_argument_method(_, h={foo: 'default'})
  p h[:foo]
end

example = { foo: 'hello' }

keyword_argument_method
# Ruby 2.7 => "default"
# Ruby 3.0 => "default"

hash_argument_method
# Ruby 2.7 => "default"
# Ruby 3.0 => "default"

keyword_argument_method example
# Ruby 2.7 =>"hello"
# Ruby 3.0 => ArgumentError

hash_argument_method example
# Ruby 2.7 => "hello"
# Ruby 3.0 => "hello"

keyword_argument_method(example)
# Ruby 2.7 => "hello"
# Ruby 3.0 => ArgumentError

keyword_argument_method(**example)
# Ruby 2.7 => "hello"
# Ruby 3.0 => "hello"

hash_argument_method(foo: "goodbye")
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye

hash_argument_method({foo: "goodbye"})
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye

long_hash_argument_method('dummy', foo: "goodbye")
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye

long_hash_argument_method('dummy', {foo: "goodbye"})
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye

long_keyword_argument_method('dummy', foo: "goodbye")
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye

long_keyword_argument_method('dummy', {foo: "goodbye"})
# Ruby 2.7 => goodbye
# Ruby 3.0 => ArgumentError

long_keyword_argument_method('dummy', **{foo: "goodbye"})
# Ruby 2.7 => goodbye
# Ruby 3.0 => goodbye
