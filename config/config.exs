# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :heroku_app,
  ecto_repos: [HerokuApp.Repo]

# Configures the endpoint
config :heroku_app, HerokuAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K8RWi1/HCyyTLdPG196H9A9lN9xiDBkpDQZ2+qNe1BKHyAzy3EXl16hp9Pjl/J0A",
  render_errors: [view: HerokuAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HerokuApp.PubSub,
  live_view: [signing_salt: "4N5nLZu1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
