# Copyright (c) 2025-present K. S. Ernest (iFire) Lee

defmodule AriaQcp.MixProject do
  use Mix.Project

  def project do
    [
      app: :aria_qcp,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      description: description(),
      package: package(),
      docs: docs(),
      source_url: "https://github.com/V-Sekai-fire/aria-qcp"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AriaQcp.Application, []}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:aria_math, git: "https://github.com/V-Sekai-fire/aria-math.git"},
      {:nx, "~> 0.10.0"},
      {:torchx, "~> 0.10"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Quaternion Characteristic Polynomial (QCP) algorithm implementation for optimal 
    rotation calculation. Provides efficient quaternion-based rotation solutions 
    for 3D transformations with GPU acceleration support.
    """
  end

  defp package do
    [
      name: "aria_qcp",
      files: ~w(lib mix.exs README.md),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/V-Sekai-fire/aria-qcp"}
    ]
  end

  defp docs do
    [
      main: "AriaQcp",
      source_url: "https://github.com/V-Sekai-fire/aria-qcp",
      extras: ["README.md"]
    ]
  end
end
