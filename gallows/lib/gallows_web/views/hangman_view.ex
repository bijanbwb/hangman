defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  @responses %{
    :won => {:outline, "You won!"},
    :lost => {:outline, "You lost"},
    :good_guess => {:outline, "Good guess!"},
    :bad_guess => {:outline, "Bad guess"},
    :already_used => {:outline, "You already guessed that"}
  }

  def new_game_button(conn) do
    button("New Game", to: Routes.hangman_path(conn, :create_game))
  end

  def game_over?(%{game_state: game_state}) do
    game_state in [:won, :lost]
  end

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil), do: ""
  defp alert({class, message}) do
    """
    <div class="button button-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end
end
