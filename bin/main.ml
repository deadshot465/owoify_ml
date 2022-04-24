let () =
  let re = Str.regexp "N\\([aeiou]\\)" in
  let is_matched = Str.string_match re "Natsumi" 0 in
  print_endline (Bool.to_string is_matched);
  print_endline (Str.matched_group 0 "Natsumi");
  print_endline (Str.matched_group 1 "Natsumi");
  ()