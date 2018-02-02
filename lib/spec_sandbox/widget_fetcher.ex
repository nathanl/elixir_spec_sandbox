defmodule SpecSandbox.WidgetFetcherBehaviour do
  @callback fetch(count :: integer()) :: [String.t()]
end

defmodule SpecSandbox.WidgetFetcherMock do
  @behaviour SpecSandbox.WidgetFetcherBehaviour
  def fetch(0 = _count), do: []
  def fetch(count) when count < 0, do: []
  def fetch(count) do
    for i <- 1..count, do: "widget #{i}"
  end
end
