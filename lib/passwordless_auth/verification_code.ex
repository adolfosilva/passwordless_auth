defmodule PasswordlessAuth.VerificationCode do
  @moduledoc false
  @enforce_keys [:code, :expires]
  defstruct attempts: 0, attempts_blocked_until: nil, code: nil, expires: nil

  @type t :: %__MODULE__{
          attempts: integer(),
          attempts_blocked_until: NaiveDateTime.t() | nil,
          code: integer(),
          expires: NaiveDateTime.t()
        }
end
