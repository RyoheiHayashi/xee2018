use Mix.Config

config :xee2018, ecto_repos: [Xee2018.Repo]

import_config "#{Mix.env}.exs"
