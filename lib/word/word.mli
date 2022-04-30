module Word : sig
  type t

  val empty: unit -> t
  val to_string: t -> string
  val search_value_contains_replaced_words: t -> Str.regexp -> string -> bool
  val replace_string: string -> string -> string -> string
  val replace: ?replace_replaced_words: bool -> Str.regexp -> string -> t -> t
  val replace_with_func_single: ?replace_replaced_words: bool -> Str.regexp -> (unit -> string) -> t -> t
  val replace_with_func_multiple: ?replace_replaced_words: bool -> Str.regexp -> (string -> string -> string) -> t -> t
end