defmodule SocketGallows.HangmanChannel do
  use Phoenix.Channel

  def join("hangman:game", _, socket) do
    {:ok, socket}
  end
end
