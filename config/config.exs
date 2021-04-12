# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :consumindo_api_autenticada,
  ecto_repos: [ConsumindoApiAutenticada.Repo]

# Configures the endpoint
config :consumindo_api_autenticada, ConsumindoApiAutenticadaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3FlLSbCg9AWCOPeYEoTh1Ix0a5Wm5hTCe35BxxKXs10obF7QxM6kciHQq5j7GV7K",
  render_errors: [view: ConsumindoApiAutenticadaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ConsumindoApiAutenticada.PubSub,
  live_view: [signing_salt: "qU80ubDK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
