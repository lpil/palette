defmodule Palette do
  @foreground_codes [
    default: 39,
    black:   30,
    red:     31,
    green:   32,
    yellow:  33,
    blue:    34,
    magenta: 35,
    cyan:    36,
    white:   37,
  ]
  for { name, code } <- @foreground_codes do
    @doc """
    Wrap the string in an ANSI escape sequence in order to make the string
    display with #{name} text when printed to the terminal.

        iex> Palette.#{name}("I'm #{name}!")
        "\e[#{code}mI'm #{name}!\e[0m"
    """
    def unquote(name)(string) do
      Palette.String.wrap(string, unquote(code))
    end
  end


  @background_codes [
    default_background: 49,
    black_background:   40,
    red_background:     41,
    green_background:   42,
    yellow_background:  43,
    blue_background:    44,
    magenta_background: 45,
    cyan_background:    46,
    white_background:   47,
  ]
  for { name, code } <- @background_codes do
    @doc """
    Wrap the string in an ANSI escape sequence in order to make the string
    display with a #{name} background when printed to the terminal.

        iex> Palette.#{name}("I'm on a #{name} background!")
        "\e[#{code}mI'm on a #{name} background!\e[0m"
    """
    def unquote(name)(string) do
      Palette.String.wrap(string, unquote(code))
    end
  end


  @doc """
  Wrap the string in an ANSI escape sequence in order to make the string
  display as bold when printed to the terminal.

      iex> Palette.bold("I'm bold!")
      "\e[21mI'm bold!\e[0m"
  """
  def bold(string) do
    Palette.String.wrap(string, 21)
  end

  @doc """
  Wrap the string in an ANSI escape sequence in order to make the string
  display as underlined text when printed to the terminal.

      iex> Palette.underline("I'm underlined!")
      "\e[4mI'm underlined!\e[0m"
  """
  def underline(string) do
    Palette.String.wrap(string, 4)
  end
end
