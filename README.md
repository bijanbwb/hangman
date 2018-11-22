# Hangman

## Quickstart

```
# Change directory to Phoenix application
cd gallows

# Fetch all dependencies
mix deps.get

# Install front-end assets
cd assets && npm install

## Start the Phoenix server
cd .. && mix phx.server

## Visit localhost:4000/hangman to play!
```

## Applications

- **dictionary**: Generates a random word using an Elixir Agent based on a text
  file containing thousands of words.
- **gallows**: Phoenix application that displays the `Hangman` application in
  the browser to play games via a web-based front-end.
- **hangman**: Hangman game implementation in `lib/hangman/game.ex` and an
  Elixir GenServer in `lib/hangman/server.ex`.
- **socket_gallows**: (partially implemented) Phoenix application to play the
  Hangman game using WebSockets instead of the HTTP `gallows` version`.
- **text_client**: Text client for the hangman game that prompts for guesses
  and prints a summary.

