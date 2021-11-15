defmodule DomoExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :domo_example,
      version: "0.1.0",
      elixir: "~> 1.12",
      compilers: Mix.compilers() ++ [:domo_compiler],
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
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
      {:domo, "~> 1.4.0"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
