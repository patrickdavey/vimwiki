`?` lazy quantifier. Turns * + etc. into matching minimum possible.

looking for <em>tags and their content</em>

/<.+>/ will match `<em>tags and their content</em>` whereas
/<.+?/ will match `<em>`

http://rubular.com/r/6orEVcpAds


### backreferences and word boudaries

I love paris in the the springtime.

`\b(\w+)\s+\1\b` => matches the the

### named backreferences (ruby)
`<(?<tag>[A-Z][A-Z0-9]*)\b[^>]*>.*?<\/\k<tag>>`
http://rubular.com/r/5ao9dLz3HD


without named captures it's
`<([A-Z][A-Z0-9]*)\b[^>]*>.*?<\/\1>`


