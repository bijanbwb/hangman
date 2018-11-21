defmodule GallowsWeb.Views.Helpers.GameStateHelper do
  import Phoenix.HTML, only: [raw: 1]

  @responses %{
    :won => {:outline, "You won!"},
    :lost => {:outline, "You lost"},
    :good_guess => {:outline, "Good guess!"},
    :bad_guess => {:outline, "Bad guess"},
    :already_used => {:outline, "You already guessed that"}
  }

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
