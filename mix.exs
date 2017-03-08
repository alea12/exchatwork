defmodule ExChatwork.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exchatwork,
      version: "0.1.0",
      elixir: "~> 1.4",
      description: "ChatWork API Interface for Elixir",
      package: [
        maintainers: ["alea12"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/alea12/exchatwork"}
      ],
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
      {:exjsx, "~> 3.0"},
      {:httpoison, "~> 0.5"},
      {:exvcr, "~> 0.8", only: :test},
      {:excoveralls, "~> 0.6", only: :test}
    ]
  end
end
