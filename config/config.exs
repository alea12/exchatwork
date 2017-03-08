# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :exchatwork, api_token: System.get_env("CHATWORK_API_TOKEN")
config :exchatwork, endpoint_base_uri: "https://api.chatwork.com/v2/"

