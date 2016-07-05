Comment.destroy_all
Post.destroy_all
Board.destroy_all

boards = Board.create([
  {title: "For"},
  {title: "To Sell"},
  {title: "To Give"}
  ])

posts = Post.create([
  {title: "This is a post looking for stuff", author: "Hannah Wants", description: "i want a steak that looks like the USA", value: 100, image: "http://i.imgur.com/12FlP56.jpg", board: boards[0] },
  {title: "24inch monitor", author: "Hannah Wants", description: "i want a 24in monitor, slightly used", value: 100, image: "http://i.imgur.com/12FlP56.jpg", board: boards[0] },
  {title: "This is a post to buy stuff", author: "Hannah Wants", description: "i sell a 24in monitor", value: 150, image: "http://i.imgur.com/12FlP56.jpg", board: boards[1] },
  {title: "This is a post to get rid of stuff", author: "Hannah Wants", description: "i give a 24in monitor", value: 0, image: "http://i.imgur.com/12FlP56.jpg", board: boards[2] },
  ])

comments = Comment.create([
  { author: "Chris Lorenzo", comment: "looks like a steak..", post: posts[0]},
  { author: "Mat Zo", comment: "looks like a steak..", post: posts[1]},
  { author: "Arty", comment: "looks like a steak..", post: posts[2]},
  ])
