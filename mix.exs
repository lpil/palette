defmodule Palette.Mixfile do
  use Mix.Project

  def project do
    [
      app: :palette,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps,
      name: "Palette",
      source_url: "https://github.com/lpil/palette",
      description: "A handy library for colouring strings.",
      package: [
        contributors: ["Louis Pilfold"],
        licenses: ["MIT"],
        links: %{ "GitHub" => "https://github.com/lpil/palette" },
        files: ~w(mix.exs lib README.md LICENCE)
      ]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:shouldi, only: :test}]
  end
end
