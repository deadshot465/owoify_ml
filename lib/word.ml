module StringSet = Set.Make(String)

type t = {
  inner_word: string;
  replaced_words: StringSet.t
}

let empty () = {
  inner_word = "";
  replaced_words = StringSet.empty
}

let to_string word = word.inner_word