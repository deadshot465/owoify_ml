open Owoify_ml_string_set.String_set

module OwoifyWord = struct
  type t = {
    inner_word: string;
    replaced_words: StringSet.t
  }

  let empty = {
    inner_word = "";
    replaced_words = StringSet.empty
  }

  let replace _ =
    ""
end