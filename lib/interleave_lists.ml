let interleave_lists list_a list_b =
  let rec loop lst other round acc =
    match Int.rem round 2 with
    x when x = 0 ->
      (match lst with
      [] ->
        (match other with
        [] -> acc
        | _ -> other @ lst)
      | hd :: tl -> loop tl other (round + 1) (hd :: acc))
    | _ ->
      match other with
      [] -> acc
      | hd :: tl -> loop lst tl (round + 1) (hd :: acc)
  in
  loop list_a list_b 0 [] |> List.rev