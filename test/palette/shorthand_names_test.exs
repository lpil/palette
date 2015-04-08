defmodule Palette.ShorthandNamesTest do
  use ShouldI
  use ExUnit.Case

  should "have the default function" do
    assert Palette.default("Hi") == "\e[39mHi\e[0m"
  end

  should "have the black function" do
    assert Palette.black("Hi") == "\e[30mHi\e[0m"
  end

  should "have the red function" do
    assert Palette.red("Hi") == "\e[31mHi\e[0m"
  end

  should "have the green function" do
    assert Palette.green("Hi") == "\e[32mHi\e[0m"
  end

  should "have the yellow function" do
    assert Palette.yellow("Hi") == "\e[33mHi\e[0m"
  end

  should "have the blue function" do
    assert Palette.blue("Hi") == "\e[34mHi\e[0m"
  end

  should "have the magenta function" do
    assert Palette.magenta("Hi") == "\e[35mHi\e[0m"
  end

  should "have the cyan function" do
    assert Palette.cyan("Hi") == "\e[36mHi\e[0m"
  end

  should "have the white function" do
    assert Palette.white("Hi") == "\e[37mHi\e[0m"
  end
end
