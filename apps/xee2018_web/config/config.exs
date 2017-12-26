# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :xee2018_web,
  namespace: Xee2018Web,
  ecto_repos: [Xee2018.Repo]

# Configures the endpoint
config :xee2018_web, Xee2018Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eGYj99oDzYDrMeQHQzEczHi08+ROx6e9nuLH99wY6zn7wzUkUMfalpqM9HYfzMqK",
  render_errors: [view: Xee2018Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Xee2018Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :xee2018_web, :generators,
  context_app: :xee2018

config :gettext, :default_locale, "ja_JP"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
