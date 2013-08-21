a = ['ant', 'cat', 'dog'];
a[0] # => "ant"
a[2] # => "dog"
#this is the same:
a = %w{ ant cat dog}
a[0] # => "ant"
a[2] # => "dog"

inst_section = {
    'cello' => 'string',
    'drum' => 'percussion',
    'oboe' => 'woodwind'
}

p inst_section['cello']
p inst_section['drum']
p inst_section['basson']

