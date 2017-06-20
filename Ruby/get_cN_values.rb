input = [	{a1: 42, b1: { c1: 'foo' }},
{a2: 43, b2: { c2: 'bar' }},
{a3: 44, b3: { c3: 'baz' }} ]

p input.map{|e| e.to_a.last.last.to_a.last.last}
p input.map { |v| v.flatten.last.flatten.last}
