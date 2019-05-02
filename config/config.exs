# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :telcofinder,
  ecto_repos: [Telcofinder.Repo]

# Configures the endpoint
config :telcofinder, TelcofinderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ew/8pNPBl0/+H827sVz7/23C3fCVkbbMRxil3JXNPtktZwHLfGevdja420wrayKX",
  render_errors: [view: TelcofinderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Telcofinder.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
