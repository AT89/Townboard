Comment.destroy_all
Post.destroy_all
Board.destroy_all

boards = Board.create([
  {title: "For"},
  {title: "To Sell"},
  {title: "To Give"}
  ])

posts = Post.create([
  {title: "Patriotic Steak", author: "Weorge Gashington", description: "i want a steak that looks like the USA", value: 30, image: "http://i.imgur.com/12FlP56.jpg", board: boards[0] },
  {title: "Air Yeezys", author: "xXxKanyefanxXx360noscope", description: "any pairs of air yeezy's, DS", value: 600, image: "http://i.imgur.com/G7xIUWK.jpg", board: boards[0] },
  {title: "Bowl o' Pho", author: "Hungry Joe", description: "Would like to eat pho for lunch", value: 10, image: "http://i.imgur.com/FI0TNCd.jpg", board: boards[1] },
  {title: "Puppies", author: "Dog Lover 787", description: "nHeidi is an incredible YoChon. Her temperment is as bright as can be. She will only be around 7-10 pounds! Heidi comes pre-spoiled! Our yochons make great pets, are great with kids, and have lots of love. She comes with a one-year health warranty and is up-to-date on her vaccinations. She can also be microchipped for only $39.99! Shipping is an additional $285 to your nearest airport anywhere in the US or Canada, or we can drive her right to your doorstep for $1 a mile round trip!!! Heidi may also be picked up in Mt. Vernon, Ohio. See more puppies for sale in ohio at www.littlepuppiesonline.com or call us at 740-497-2333 or 740-501-6746 with any questions.", value: 285, image: "http://pics.hoobly.com/big/oqku0aKwE1.jpg", board: boards[1] },
  {title: "Free puppy", author: "Carl", description: "Found a puppy, my apartment does not allow pets, need to find it a new home!", value: 0, image: "http://i.imgur.com/HzqpyZ7.jpg", board: boards[2] }
  ])

comments = Comment.create([
  { author: "Hannah Wants", description: "maybe you can get a steak template", image: "http://3.bp.blogspot.com/-U_bCFDeZazc/UOy-kgnu5UI/AAAAAAAABjY/AwWTeXCVOfw/s1600/browned-salmon.jpg", post: posts[0]},
  { author: "Chris Lorenzo", description: "Hannah, thats a salmon" , post: posts[0]},
  { author: "Mat Zo", description: "looks like a steak..", image: "http://i.imgur.com/weg2K6M.gif", post: posts[1]},
  { author: "Arty", description: "I can help you out, meet me infront of the building for lunch!", post: posts[2]},
  ])
