defmodule SocketGallowsWeb.PageControllerTest do
  use SocketGallowsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Hangman"
  end
end
