defmodule Palette.String do
  @suffix "\e[0m"

  def wrap(string, []) do
    string
  end
  def wrap(string, codes) do
    string
    |> prefix(List.wrap codes)
    |> apply_suffix
  end

  defp prefix(string, codes) do
    matches = Regex.run ~r/\e\[([\d;]*)m(.*)/, string
    codes   = Enum.join codes, ";"

    if matches do
      codes  = "#{ codes };#{ Enum.at matches, 1 }"
      string = Enum.at(matches, 2)
    end
    "\e[#{ codes }m" <> string
  end

  defp apply_suffix(str) do
    if String.ends_with?(str, @suffix) do
      str
    else
      str <> @suffix
    end
  end
end
