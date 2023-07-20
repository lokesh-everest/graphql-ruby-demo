# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

taylor = Artist.create!(
  email: "taylor.swift@example.com",
  first_name: "Taylor",
  last_name: "Swift"
)

zeppelin = Artist.create!(
  email: "ledzeppelin@example.com",
  first_name: "zeplin",
  last_name: "led"
)

opeth = Artist.create!(
  email: "opeth@example.com",
  first_name: "opeth",
  last_name: "opeth"
)

Album.create!(
  [
    {
      title: "Red (Taylor's Version)",
      description: "Loving him is like driving a new Maserati down a dead-end street...",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    },
    {
      title: "All Too Well (Taylor's Version)",
      description: "It was rare, I was there, I remember it all too well",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    },
    {
      title: "Stairway to heaven",
      description: "Stairway to heaven",
      artist: zeppelin,
      image_url: "https://img.freepik.com/free-photo/door-opening-new-world-composition_23-2150172141.jpg?size=626&ext=jpg"
    },
    {
      title: "Immigrant",
      description: "Immigrant song",
      artist: zeppelin,
      image_url: "https://img.freepik.com/free-photo/door-opening-new-world-composition_23-2150172141.jpg?size=626&ext=jpg"
    },
    {
      title: "Windowpane",
      description: "Windownpane song",
      artist: opeth,
      image_url: "https://img.freepik.com/free-photo/door-opening-new-world-composition_23-2150172141.jpg?size=626&ext=jpg"
    },
    {
      title: "Black rose immortal",
      description: "black rose immortal",
      artist: opeth,
      image_url: "https://img.freepik.com/free-photo/door-opening-new-world-composition_23-2150172141.jpg?size=626&ext=jpg"
    }
  ]
)
