def old_style_method(regular_param, optional_param: 'value', required_param:)
  p "#{regular_param}, #{optional_param} and #{required_param}"
end


old_style_method 'a', required_param: 'c'
# => "a, value and c"

old_style_method 'a', optional_param: 'b', required_param: 'c'
# => "a, b and c"

old_style_method 'a', optional_param: 'b'
# => ArgumentError
