open Owoify_ml_string_set.String_set

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
      (let match_result = Str.matched_group 0 s |> Str.global_replace search_value replace_value in
      match_result = s)
    else
      false) word.replaced_words

(** [replace_string to_be_replaced replace_value s] will replace all occurrence of [to_be_replaced] in the string [s] with [replace_value]. *)
let replace_string to_be_replaced replace_value s =
  Str.global_replace (Str.regexp to_be_replaced) replace_value s

let replace ?(replace_replaced_words = false) search_value replace_value word =
  if (replace_replaced_words |> not) && (search_value_contains_replaced_words word search_value replace_value) then
    word
  else (
    let matched = Str.string_match search_value word.inner_word 0 in
    let replacing_word = (if matched then
      Str.global_replace search_value replace_value word.inner_word
    else
      word.inner_word) in
    let replaced_words = (if matched then
      let group0 = Str.matched_group 0 word.inner_word in
      replace_string group0 replace_value group0 :: []
    else
      []) in
    
    if (replacing_word = word.inner_word) |> not then
      let new_replaced_words = StringSet.add_seq (List.to_seq replaced_words) word.replaced_words in
      {inner_word = replacing_word; replaced_words = new_replaced_words}
    else
      word
  )

let replace_with_func_single ?(replace_replaced_words = false) search_value func word =
  let replace_value = func () in
  if (replace_replaced_words |> not) && (search_value_contains_replaced_words word search_value replace_value) then
    word
  else
    let matched = Str.string_match search_value word.inner_word 0 in
    let replacing_word = if matched then
      let match_item = Str.matched_group 0 word.inner_word in
      replace_string match_item replace_value word.inner_word
    else
      word.inner_word
    in
    let replaced_words = (if matched then
      let group0 = Str.matched_group 0 word.inner_word in
      replace_string group0 replace_value group0 :: []
    else
      []) in
    
    if (replacing_word = word.inner_word) |> not then
      let new_replaced_words = StringSet.add_seq (List.to_seq replaced_words) word.replaced_words in
      {inner_word = replacing_word; replaced_words = new_replaced_words}
    else
      word

let replace_with_func_multiple ?(replace_replaced_words = false) search_value func word = 
  let matched = Str.string_match search_value word.inner_word 0 in
  if matched |> not then
    word
  else
    let word_clone = word.inner_word in
    let group0 = Str.matched_group 0 word_clone and
    group1 = Str.matched_group 1 word_clone and
    group2 = Str.matched_group 2 word_clone in
    let replace_value = func group1 group2 in
    if (replace_replaced_words |> not) && (search_value_contains_replaced_words word search_value replace_value) then
      word
    else
      let replacing_word = replace_string group0 replace_value word.inner_word and
      replaced_words = (if matched then
        let group0 = Str.matched_group 0 word.inner_word in
        replace_string group0 replace_value group0 :: []
      else
        []) in
      
      if (replacing_word = word.inner_word) |> not then
        let new_replaced_words = StringSet.add_seq (List.to_seq replaced_words) word.replaced_words in
        {inner_word = replacing_word; replaced_words = new_replaced_words}
      else
        word