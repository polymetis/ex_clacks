defmodule ExClacks.MixProject do
  use Mix.Project

  @version "1.0.0"
  @source_url "https://github.com/polymetis/ex_clacks"

  def project do
    [
      app: :ex_clacks,
      version: @version,
      elixir: "~> 1.15",
      deps: deps(),
      package: package(),
      description: "A Plug that pays homage to Terry Pratchett",
      source_url: @source_url,
      docs: docs()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:plug, "~> 1.14"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      files: ~w(lib mix.exs README.md LICENSE.md CHANGELOG.md),
      links: %{"GitHub" => @source_url}
    }
  end

  defp docs do
    [
      main: "ExClacks",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: ["README.md", "CHANGELOG.md", "LICENSE.md"]
    ]
  end
end
