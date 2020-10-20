#  powered by metaL: https://github.com/ponyatov/metaL/wiki/metaL-manifest
defmodule Exwm.MixProject do
  use Mix.Project

  def project do
    [
      # \ <section:project>
      app: :exwm,
      version: "0.0.1",
      name: "exwm",
      description: "Window Manager in Elixir",
      source_url: "https://github.com/ponyatov/exwm",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      docs: [extras: ["README.md"]],
      package: package(),
      deps: deps()
      # / <section:project>
    ]
  end

  def application do
    [
      applications: [
      ],
      extra_applications: [
        # \ <section:extra>
        :logger
        # / <section:extra>
      ]
    ]
  end

  defp deps do
    [
      # \ <section:deps>
      # {:exsync, "~> 0.2", only: :dev},
      # / <section:deps>
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "exwm",
      files: ~w(lib src .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ponyatov/exwm"},
      maintainers: ["Dmitry Ponyatov <dponyatov@gmail.com>"]
    ]
  end
end
