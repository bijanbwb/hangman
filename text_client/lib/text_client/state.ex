defmodule TextClient.State do
  defstruct(
    game_service: nil,
    guessed: "",
    tally: nil
  )
end
