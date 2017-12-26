use Mix.Config

# Configure your database
config :xee2018, Xee2018.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xee2018",
  hostname: "localhost",
  pool_size: 10
