defmodule SentryLogCapture.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sentry_log_capture,
      version: "0.0.3",
      elixir: "~> 1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      source_url: "https://github.com/futurepet/sentry-log-capture",
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp description do
    "Provides a `Logger` backend for Sentry, to automatically submit Logger events above a configurable threshold to Sentry"
  end

  defp deps do
    [
      {:sentry, ">= 4.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
