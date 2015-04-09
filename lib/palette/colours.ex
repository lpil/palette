defmodule Palette.Colours do

  @foreground_offset 30
  @background_offset 40
  @nums %{
    black:   0,
    red:     1,
    green:   2,
    yellow:  3,
    blue:    4,
    magenta: 5,
    cyan:    6,
    white:   7,
    default: 9,
  }

  @rev_nums Enum.into(
    Enum.map(@nums, fn {k, v} -> {v, k} end),
    %{}
  )


  @doc """
  Converts a foreground colour to the appropriate number for an ANSI
  escape sequence

      iex> Palette.Colours.foreground_to_num(:blue)
      34
      iex> Palette.Colours.foreground_to_num("white")
      37
  """
  def foreground_to_num(x) when is_binary(x) do
    foreground_to_num(String.to_atom x)
  end
  def foreground_to_num(x) when is_atom(x) do
    to_num(x) + @foreground_offset
  end


  @doc """
  Converts a background colour to the appropriate number for an ANSI
  escape sequence

      iex> Palette.Colours.background_to_num(:red)
      41
      iex> Palette.Colours.background_to_num("white")
      47
  """
  def background_to_num(x) when is_binary(x) do
    background_to_num(String.to_atom x)
  end
  def background_to_num(x) when is_atom(x) do
    to_num(x) + @background_offset
  end


  @doc """
  Convert a colours to their index in the ANSI colour sequence.

  Note that these numbers are not valid for use in ANSI escape codes. See
  `Palette.Colours.foreground_to_num` and `Palette.Colours.background_to_num`
  for that functionality.

      iex> Palette.Colours.to_num(:cyan)
      6
      iex> Palette.Colours.to_num("magenta")
      5
  """
  def to_num(x) when is_binary(x) do
    to_num(String.to_atom x)
  end
  def to_num(x) when is_atom(x) do
    @nums[x]
  end
end
