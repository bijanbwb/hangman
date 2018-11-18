defmodule TextClient.Player do
  alias TextClient.State

  # won, lost, good_guess, bad_guess, already_used, initializing
  def play(%State{tally: %{game_state: :won}}) do
    exit_with_message("You won!")
  end
  def play(%State{tally: %{game_state: :lost}}) do
    exit_with_message("Sorry, you lost.")
  end
  def play(game = %State{tally: %{game_state: :good_guess}}) do
    continue_with_message(game, "Good guess!")
  end
  def play(game = %State{tally: %{game_state: :bad_guess}}) do
    continue_with_message(game, "Sorry, that letter isn't in the word.")
  end
  def play(game = %State{tally: %{game_state: :already_used}}) do
    continue_with_message(game, "You've already used that letter.")
  end
  def play(game) do
    continue(game)
  end

  def continue(game) do
    game
    |> display()
    |> prompt()
    |> make_move()
  end

  def display(game) do
    game
  end

  def prompt(game) do
    game
  end

  def make_move(game) do
    game
  end

  defp continue_with_message(game, msg) do
    IO.puts(msg)
    continue(game)
  end

  defp exit_with_message(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end
