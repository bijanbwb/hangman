defmodule GallowsWeb.PageControllerTest do
  use GallowsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/hangman")
    assert html_response(conn, 200) =~ "Hangman"
  end
end
