use Mix.Config

# Configure your database
config :xee2018, Xee2018.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xee2018_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
