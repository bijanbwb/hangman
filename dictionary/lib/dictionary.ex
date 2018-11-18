defmodule Dictionary do
  def list_words do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split("\n")
  end

  def random_word do
    list_words()
    |> Enum.random()
  end
end
