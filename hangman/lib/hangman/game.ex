defmodule Hangman.Game do
  defstruct(
    game_state: :initializing,
    letters: [],
    turns_left: 7
  )

  def new_game() do
    %Hangman.Game{
      letters:
        Dictionary.random_word()
        |> String.codepoints()
    }
  end
end
