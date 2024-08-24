import Config

config :auction, Auction.Repo,
  username: "francisco",
  password: "",
  database: "auction_prueba",
  hostname: "localhost"

config :auction, ecto_repos: [Auction.Repo]

IO.inspect("olaa")
