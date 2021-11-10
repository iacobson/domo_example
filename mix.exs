defmodule DomoExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :domo_example,
      version: "0.1.0",
      elixir: "~> 1.12",
      compilers: Mix.compilers() ++ [:domo_compiler],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:typed_struct, "~> 0.2.1"},
      {:domo, "~> 1.3.4"}
    ]
  end
end