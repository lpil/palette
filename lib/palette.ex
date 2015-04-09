defmodule Palette do
  alias Palette.String, as: S
  alias Palette.Colours, as: C

  @colours [
    :default,
    :black,
    :red,
    :green,
    :yellow,
    :blue,
    :magenta,
    :cyan,
    :white
  ]

  for colour <- @colours do
    @doc """
    Wrap the string in an ANSI escape sequence in order to make the string
    display with #{colour} text when printed to the terminal.

        iex> Palette.#{colour}("I'm #{colour}!")
        "\e[3#{C.to_num colour}mI'm #{colour}!\e[0m"
    """
    def unquote(colour)(string) do
      code = C.foreground_to_num(unquote(colour))
      S.wrap( string, code )
    end

    func = String.to_atom( Atom.to_string(colour) <> "_background" )
    @doc """
    Wrap the string in an ANSI escape sequence in order to make the string
    display with a #{colour} background when printed to the terminal.

        iex> Palette.#{func}("I'm on a #{colour} background!")
        "\e[4#{C.to_num colour}mI'm on a #{colour} background!\e[0m"
    """
    def unquote(func)(string) do
      code = C.background_to_num(unquote(colour))
      S.wrap( string, code )
    end
  end


  @doc """
  Wrap the string in an ANSI escape sequence in order to make the string
  display as bold when printed to the terminal.

      iex> Palette.bold("I'm bold!")
      "\e[21mI'm bold!\e[0m"
  """
  def bold(string) do
    S.wrap(string, 21)
  end

  @doc """
  Wrap the string in an ANSI escape sequence in order to make the string
  display as underlined text when printed to the terminal.

      iex> Palette.underline("I'm underlined!")
      "\e[4mI'm underlined!\e[0m"
  """
  def underline(string) do
    S.wrap(string, 4)
  end
end
