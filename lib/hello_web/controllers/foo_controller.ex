defmodule HelloWeb.FooController do
  use HelloWeb, :controller

  def mega_cunt(conn, _params) do
    render(conn, :mega_cunt)
  end

end

defmodule HelloWeb.FooHTML do
  use HelloWeb, :html

  embed_templates "foo_html/*"

end
