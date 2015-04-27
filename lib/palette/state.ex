defmodule Palette.State do
  @name __MODULE__

  def start_link do
    state = fn -> %{ enabled: true } end
    Agent.start_link(state, name: @name)
  end

  def enabled? do
    Agent.get(@name, &Map.get( &1, :enabled ))
  end

  def enable do
    Agent.put(@name, &Map.put( &1, :enabled, true ))
  end

  def disable do
    Agent.put(@name, &Map.put( &1, :enabled, false ))
  end
end
