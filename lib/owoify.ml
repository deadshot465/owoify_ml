type owoness
  = Owo
  | Uwu
  | Uvu

let word_regex = Str.regexp "[^\\s]+"

let space_regex = Str.regexp "\\s+"

let owoify ?(level = Owo) source =
  let 