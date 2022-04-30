let interleave_lists a b =
  let rec loop lst other round acc =
    match Int32.rem round 2l with
    x when Int32.to_int x = 0 ->
      (match lst with
      [] ->
        (match other with
        [] -> acc
        | _ -> other @ lst)
      | hd :: tl -> loop tl other (Int32.add round 1l) (hd :: acc))
    | _ ->
      match other with
      [] -> acc
      | hd :: tl -> loop lst tl (Int32.add round 1l) (hd :: acc)
  in
  loop a b 0l [] |> List.rev