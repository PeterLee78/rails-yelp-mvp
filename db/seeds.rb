puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Nandos',
    address:      'Seminyak',
    number:       '08126483',
    category:     'italian'
  },
  {
    name:         'Dominos',
    address:      'Canggu',
    number:       '38374940',
    category:     'chinese'
  },
  {
    name:         'KFC',
    address:      'Denpasar',
    number:       '03937333',
    category:     'japanese'
  },
  {
    name:         'Burger King',
    address:      'Kuta',
    number:       '48048032',
    category:     'french'
  },
  {
    name:         'Varuna',
    address:      'Uluwatu',
    number:       '02938374',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
