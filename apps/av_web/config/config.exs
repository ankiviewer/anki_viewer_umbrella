# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :av_web,
  namespace: AvWeb,
  ecto_repos: [Av.Repo]

# Configures the endpoint
config :av_web, AvWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+LHL2rQKTJoAtHul9+d+lmIpBl2Ck7S7/KdYb/IFoJv+BHQsE825ACv7kCqfKrNG",
  render_errors: [view: AvWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AvWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :av_web, AvWeb.Auth.Guardian,
  issuer: "av_web",
  secret_key: "KsEJIbKew7LFsdpeoHdbir0D+k2ISJ5XNBpNjUasIv2ywvhWNsdeZqjLiyRlYaU5"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :av_web, :generators,
  context_app: :av

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
