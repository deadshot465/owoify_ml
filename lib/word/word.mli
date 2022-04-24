module OwoifyWord : sig
  type t

  val empty: unit -> t
  val replace: string -> string
end