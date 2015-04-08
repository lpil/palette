defmodule Palette.String do
  @suffix "\e[0m"

  def wrap(string, []) do
    string
  end
  def wrap(string, codes) do
    codes = codes
            |> List.wrap
            |> Enum.join(";")

    string
    |> set_default(codes)
    |> prefix(codes)
    |> apply_suffix
  end

  defp prefix(string, codes) do
    matches = Regex.run ~r/\A\e\[([\d;]*)m(.*)/, string

    if matches do
      codes  = "#{ codes };#{ Enum.at matches, 1 }"
      string = Enum.at(matches, 2)
    end
    "\e[#{ codes }m" <> string
  end

  defp set_default(string, code) do
    default = "\e[#{code}m"
    def_reg = ~r/#{Regex.escape default}\z/
    string
    |> String.replace(~r/\e\[0m/, default)
    |> String.replace(def_reg, "\e[0m")
  end

  defp apply_suffix(str) do
    if String.ends_with?(str, @suffix) do
      str
    else
      str <> @suffix
    end
  end
end
