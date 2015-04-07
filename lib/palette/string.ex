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
    "\e[#{ Enum.join codes, ";" }m" <> string
  end

  defp apply_suffix(str) do
    if String.ends_with?(str, @suffix) do
      str
    else
      str <> @suffix
    end
  end
end
