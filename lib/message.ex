defmodule GenRMQ.Message do
  @moduledoc """
  Struct wrapping details of the consumed message

  Defines:
  * `:attributes` - message attributes
  * `:payload` - message raw payload
  * `:state` - consumer state
  * `:config` - config
  """

  @enforce_keys [:attributes, :payload, :state, :config]
  defstruct [:attributes, :payload, :state, :config]

  @doc false
  def create(attributes, payload, state, config) do
    %__MODULE__{
      attributes: attributes,
      payload: payload,
      state: state,
      config: config
    }
  end
end
