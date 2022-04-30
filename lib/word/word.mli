module OwoifyWord : sig
  type t

  val empty: unit -> t
  val to_string: t -> string
  val search_value_contains_replaced_words: t -> Str.regexp -> string -> bool
  val replace_string: string -> string -> string -> string
  val replace: t -> Str.regexp -> string -> bool -> t
  val replace_with_func_single: t -> Str.regexp -> (unit -> string) -> bool -> t
  val replace_with_func_multiple: t -> Str.regexp -> (string -> string -> string) -> bool -> t
end