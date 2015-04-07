Palette
=======

A handy library for colouring strings to be printing on ANSI terminals.

## Usage

```elixir
"Hello, world!"
|> Palette.red
|> Palette.underline
# => "\e[31;4mHello, world!\e[0m"
```

Or at least that's the idea. We're not finished yet.
