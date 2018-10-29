product_1 = Node.create(
  label:'Sunseed Chorizo',
  description:'A Description of something tasty',
  position: 0,
  tag: 'recipe',
  yield: 1.0
)

salt = Node.create(
  label:'salt',
  description:'Salty',
  position: 0,
  tag: 'ingredient',
  yield: 1.0
)

pepper = Node.create(
  label:'pepper',
  description:'Peppery',
  position: 1,
  tag: 'ingredient',
  yield: 1.0
)

p_salt = Edge.create(
  parent: product_1,
  child: salt,
  quantity: 10
)

p_pepper = Edge.create(
  parent: product_1,
  child: pepper,
  quantity: 10
)
