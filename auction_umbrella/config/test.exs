import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auction_web, AuctionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "WlChQPbqFq3aaNPhuZ1vmyIk7LlOhDjwcHcts5Q95zYmjeScSYHNy4era6MOb6nW",
  server: false
