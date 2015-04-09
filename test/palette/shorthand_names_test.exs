defmodule Palette.ShorthandNamesTest do
  use ShouldI
  use ExUnit.Case

  should "be able to default" do
    assert Palette.default("Hi") == "\e[39mHi\e[0m"
  end
  should "be able to black" do
    assert Palette.black("Hi") == "\e[30mHi\e[0m"
  end
  should "be able to red" do
    assert Palette.red("Hi") == "\e[31mHi\e[0m"
  end
  should "be able to green" do
    assert Palette.green("Hi") == "\e[32mHi\e[0m"
  end
  should "be able to yellow" do
    assert Palette.yellow("Hi") == "\e[33mHi\e[0m"
  end
  should "be able to blue" do
    assert Palette.blue("Hi") == "\e[34mHi\e[0m"
  end
  should "be able to magenta" do
    assert Palette.magenta("Hi") == "\e[35mHi\e[0m"
  end
  should "be able to cyan" do
    assert Palette.cyan("Hi") == "\e[36mHi\e[0m"
  end
  should "be able to white" do
    assert Palette.white("Hi") == "\e[37mHi\e[0m"
  end


  should "be able to default_background" do
    assert Palette.default_background("Hi") == "\e[49mHi\e[0m"
  end
  should "be able to black_background" do
    assert Palette.black_background("Hi") == "\e[40mHi\e[0m"
  end
  should "be able to red_background" do
    assert Palette.red_background("Hi") == "\e[41mHi\e[0m"
  end
  should "be able to green_background" do
    assert Palette.green_background("Hi") == "\e[42mHi\e[0m"
  end
  should "be able to yellow_background" do
    assert Palette.yellow_background("Hi") == "\e[43mHi\e[0m"
  end
  should "be able to blue_background" do
    assert Palette.blue_background("Hi") == "\e[44mHi\e[0m"
  end
  should "be able to magenta_background" do
    assert Palette.magenta_background("Hi") == "\e[45mHi\e[0m"
  end
  should "be able to cyan_background" do
    assert Palette.cyan_background("Hi") == "\e[46mHi\e[0m"
  end
  should "be able to white_background" do
    assert Palette.white_background("Hi") == "\e[47mHi\e[0m"
  end


  should "be able to bold" do
    assert Palette.bold("Hi") == "\e[21mHi\e[0m"
  end
  should "be able to underline" do
    assert Palette.underline("Hi") == "\e[4mHi\e[0m"
  end
end
