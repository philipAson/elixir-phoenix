defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en", "fr", "de"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => location}} = conn, _default) when location in @locales do
    assign(conn, :locale, location)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
