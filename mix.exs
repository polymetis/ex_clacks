defmodule ExClacks.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_clacks,
     version: "0.1.0",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package,
     description: "A Plug that pays homage to Terry Pratchett",
     source_url: "https://github.com/polymetis/ex_clacks"
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [ {:plug, "~> 1.0"}]
  end

  def package do
    %{
      maintainer: ["'Ley Missailidis"],
      licenses: ["MIT"],
      links: %{
        "GitHub": "https://github.com/polymetis/ex_clacks"
      }
    }
  end

end
