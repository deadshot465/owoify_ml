open Owoify_ml_string_set.String_set

module OwoifyWord = struct
  type t = {
    inner_word: string;
    replaced_words: StringSet.t
  }

  let empty () = {
    inner_word = "";
    replaced_words = StringSet.empty
  }

  let to_string word = word.inner_word

  let search_value_contains_replaced_words word search_value replace_value =
    StringSet.exists (fun s ->
      let matched = Str.string_match search_value s 0 in
      if matched then
        (let captured = Str.matched_group 0 s in
        let replaced = Str.global_replace (Str.regexp captured) replace_value captured in
        replaced = s)
      else
        false) word.replaced_words

  (** [replace_string s to_be_replaced replace_value] will replace all occurrence of [to_be_replaced] in the string [s] with [replace_value]. *)
  let replace_string s to_be_replaced replace_value =
    Str.global_replace (Str.regexp to_be_replaced) replace_value s

  let replace word search_value replace_value replace_replaced_words =
    if (replace_replaced_words |> not) && (search_value_contains_replaced_words word search_value replace_value) then
      word
    else (
      let matched = Str.string_match search_value word.inner_word 0 in
      let replacing_word = (if matched then
        Str.global_replace search_value replace_value word.inner_word
      else
        word.inner_word) in
      let _ = replacing_word in      
      word
    )
end