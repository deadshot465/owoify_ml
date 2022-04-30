open Owoify_ml_word.Word

module Mappings = struct
  let o_to_owo = Str.regexp "o"
  let ew_to_uwu = Str.regexp "ew"
  let hey_to_hay = Str.regexp "\\([Hh]\\)ey"
  let dead_to_ded_upper = Str.regexp "Dead"
  let dead_to_ded_lower = Str.regexp "dead"
  let n_vowel_t_to_nd = Str.regexp "n[aeiou]*t"
  let read_to_wead_upper = Str.regexp "Read"
  let read_to_wead_lower = Str.regexp "read"
  let brackets_to_startrails_fore = Str.regexp "[({<]"
  let brackets_to_startrails_rear = Str.regexp "[)}>]"
  let period_comma_exclamation_semicolon_to_kaomojis_first = Str.regexp "[.,]\\(?![0-9]\\)"
  let period_comma_exclamation_semicolon_to_kaomojis_second = Str.regexp "[!;]+"
  let that_to_dat_upper = Str.regexp "That"
  let that_to_dat_lower = Str.regexp "that"
  let th_to_f_upper = Str.regexp "TH\\(?!E\\)"
  let th_to_f_lower = Str.regexp "[Tt]h\\(?![Ee]\\)"
  let le_to_wal = Str.regexp "le$"
  let ve_to_we_upper = Str.regexp "Ve"
  let ve_to_we_lower = Str.regexp "ve"
  let ry_to_wwy = Str.regexp "ry"
  let rorl_to_w_upper = Str.regexp "\\(?:R\\|L\\)"
  let rorl_to_w_lower = Str.regexp "\\(?:r\\|l\\)"
  let ll_to_ww = Str.regexp "ll"
  let vowel_or_r_except_o_l_to_wl_upper = Str.regexp "[AEIUR]\\([lL]\\)$"
  let vowel_or_r_except_o_l_to_wl_lower = Str.regexp "[aeiur]l$"
  let old_to_owld_upper = Str.regexp "OLD"
  let old_to_owld_lower = Str.regexp "\\([Oo]\\)ld"
  let ol_to_owl_upper = Str.regexp "OL"
  let ol_to_owl_lower = Str.regexp "\\([Oo]\\)l"
  let lorr_o_to_wo_upper = Str.regexp "[LR]\\([oO]\\)"
  let lorr_o_to_wo_lower = Str.regexp "[lr]o"
  let specific_consonants_o_to_letter_and_wo_upper = Str.regexp "\\([BCDFGHJKMNPQSTXYZ]\\)\\([oO]\\)"
  let specific_consonants_o_to_letter_and_wo_lower = Str.regexp "\\([bcdfghjkmnpqstxyz]\\)o"
  let vorw_le_to_wal = Str.regexp "[vw]le"
  let fi_to_fwi_upper = Str.regexp "FI"
  let fi_to_fwi_lower = Str.regexp "\\([Ff]\\)i"
  let ver_to_wer = Str.regexp "\\([Vv]\\)er"
  let poi_to_pwoi = Str.regexp "\\([Pp]\\)oi"
  let specific_consonants_le_to_letter_and_wal = Str.regexp "\\([DdFfGgHhJjPpQqRrSsTtXxYyZz]\\)le$"
  let consonant_r_to_consonant_w = Str.regexp "\\([BbCcDdFfGgKkPpQqSsTtWwXxZz]\\)r"
  let ly_to_wy_upper = Str.regexp "Ly"
  let ly_to_wy_lower = Str.regexp "ly"
  let ple_to_pwe = Str.regexp "\\([Pp]\\)le"
  let nr_to_nw_upper = Str.regexp "NR"
  let nr_to_nw_lower = Str.regexp "nr"
  let fuc_to_fwuc = Str.regexp "\\([Ff]\\)uc"
  let mom_to_mwom = Str.regexp "\\([Mm]\\)om"
  let me_to_mwe = Str.regexp "\\([Mm]\\)e"
  let n_vowel_to_ny_first = Str.regexp "n\\([aeiou]\\)"
  let n_vowel_to_ny_second = Str.regexp "N\\([aeiou]\\)"
  let n_vowel_to_ny_third = Str.regexp "N\\([AEIOU]\\)"
  let ove_to_uv_upper = Str.regexp "OVE"
  let ove_to_uv_lower = Str.regexp "ove"
  let haha_to_hehe_xd = Str.regexp "\\b\\(ha\\|hah\\|heh\\|hehe\\)+\\b"
  let the_to_teh = Str.regexp "\\b\\([Tt]\\)he\\b"
  let you_to_u_upper = Str.regexp "\\bYou\\b"
  let you_to_u_lower = Str.regexp "\\byou\\b"
  let time_to_tim = Str.regexp "\\b\\([Tt]\\)ime\\b"
  let over_to_owor = Str.regexp "\\([Oo]\\)ver"
  let worse_to_wose = Str.regexp "\\([Ww]\\)orse"

  let faces = [|
    "(・`ω´・)";
    ";;w;;";
    "owo";
    "UwU";
    ">w<";
    "^w^";
    "(* ^ ω ^)";
    "(⌒ω⌒)";
    "ヽ(*・ω・)ﾉ";
    "(o´∀`o)";
    "(o･ω･o)";
    "＼(＾▽＾)／";
    "(*^ω^)";
    "(◕‿◕✿)";
    "(◕ᴥ◕)";
    "ʕ•ᴥ•ʔ";
    "ʕ￫ᴥ￩ʔ";
    "(*^.^*)";
    "(｡♥‿♥｡)";
    "OwO";
    "uwu";
    "uvu";
    "UvU";
    "(*￣з￣)";
    "(つ✧ω✧)つ";
    "(/ =ω=)/";
    "(╯°□°）╯︵ ┻━┻";
    "┬─┬ ノ( ゜-゜ノ)";
    "¯\\_(ツ)_/¯"
  |]

  let map_o_to_owo word =
    let replacement = if (Random.int 2 > 0) then
      "owo"
    else
      "o"
    in
    Word.replace o_to_owo replacement word

  let map_ew_to_uwu = Word.replace ew_to_uwu "uwu"
  let map_hey_to_hay = Word.replace hey_to_hay "\\1ay"
  
  let map_dead_to_ded word =
    Word.replace dead_to_ded_upper "Ded" word
    |> Word.replace dead_to_ded_lower "ded"

  let map_n_vowel_t_to_nd = Word.replace n_vowel_t_to_nd "nd"

  let map_read_to_wead word =
    Word.replace read_to_wead_upper "Wead" word |> Word.replace read_to_wead_lower "wead"

  let map_brackets_to_star_trails word =
    Word.replace brackets_to_startrails_fore "｡･:*:･ﾟ★,｡･:*:･ﾟ☆" word
    |> Word.replace brackets_to_startrails_rear "☆ﾟ･:*:･｡,★ﾟ･:*:･｡"

  let map_period_comma_exclamation_semicolon_to_kaomojis word =
    let f = fun () ->
      Array.length faces |> Random.int |> Array.get faces in
    Word.replace_with_func_single period_comma_exclamation_semicolon_to_kaomojis_first f word
    |> Word.replace_with_func_single period_comma_exclamation_semicolon_to_kaomojis_second f

  let map_that_to_dat word =
    Word.replace that_to_dat_lower "dat" word
    |> Word.replace that_to_dat_upper "Dat"

  let map_th_to_f word =
    Word.replace th_to_f_lower "f" word
    |> Word.replace th_to_f_upper "F"

  let map_le_to_wal = Word.replace le_to_wal "wal"

  let map_ve_to_we word =
    Word.replace ve_to_we_lower "we" word
    |> Word.replace ve_to_we_upper "We"

  let map_ry_to_wwy = Word.replace ry_to_wwy "wwy"

  let map_r_or_l_to_w word =
    Word.replace rorl_to_w_lower "w" word
    |> Word.replace rorl_to_w_upper "W"

  let map_ll_to_ww = Word.replace ll_to_ww "ww"

  let map_vowel_or_r_except_o_l_to_wl word =
    Word.replace vowel_or_r_except_o_l_to_wl_lower "wl" word
    |> Word.replace vowel_or_r_except_o_l_to_wl_upper "W\\1"

  let map_old_to_owld word =
    Word.replace old_to_owld_lower "\\1wld" word
    |> Word.replace old_to_owld_upper "OWLD"

  let map_ol_to_owl word =
    Word.replace ol_to_owl_lower "\\1wl" word
    |> Word.replace ol_to_owl_upper "OWL"

  let map_l_or_r_o_to_wo word =
    Word.replace lorr_o_to_wo_lower "wo" word
    |> Word.replace lorr_o_to_wo_upper "W\\1"

  let map_specific_consonants_o_to_letter_and_wo word =
    let f = fun s1 s2 ->
      if String.uppercase_ascii s2 = s2 then
        Printf.sprintf "%s%s%s" s1 "W" s2
      else
        Printf.sprintf "%s%s%s" s1 "w" s2
    in
    Word.replace specific_consonants_o_to_letter_and_wo_lower "\\1wo" word
    |> Word.replace_with_func_multiple specific_consonants_o_to_letter_and_wo_upper f

  let map_v_or_w_le_to_wal = Word.replace vorw_le_to_wal "wal"

  let map_fi_to_fwi word =
    Word.replace fi_to_fwi_lower "\\1wi" word
    |> Word.replace fi_to_fwi_upper "FWI"

  let map_ver_to_wer = Word.replace ver_to_wer "wer"
  let map_poi_to_pwoi = Word.replace poi_to_pwoi "\\1woi"
  let map_specific_consonants_le_to_letter_and_wal = Word.replace specific_consonants_le_to_letter_and_wal "\\1wal"
  let map_consonant_r_to_consonant_w = Word.replace consonant_r_to_consonant_w "\\1w"
  
  let map_ly_to_wy word =
    Word.replace ly_to_wy_lower "wy" word
    |> Word.replace ly_to_wy_upper "Wy"

  let map_ple_to_pwe = Word.replace ple_to_pwe "\\1we"

  let map_nr_to_nw word =
    Word.replace nr_to_nw_lower "nw" word
    |> Word.replace nr_to_nw_upper "NW"

  let map_fuc_to_fwuc = Word.replace fuc_to_fwuc "\\1wuc"
  let map_mom_to_mwom = Word.replace mom_to_mwom "\\1wom"
  let map_me_to_mwe = Word.replace me_to_mwe "\\1we"

  let map_n_vowel_to_ny word =
    Word.replace n_vowel_to_ny_first "ny\\1" word
    |> Word.replace n_vowel_to_ny_second "Ny\\1"
    |> Word.replace n_vowel_to_ny_third "NY\\1"

  let map_ove_to_uv word =
    Word.replace ove_to_uv_lower "uv" word
    |> Word.replace ove_to_uv_upper "UV"

  let map_haha_to_hehe_xd = Word.replace haha_to_hehe_xd "hehe xD"
  let map_the_to_teh = Word.replace the_to_teh "\\1eh"

  let map_you_to_u word =
    Word.replace you_to_u_upper "U" word
    |> Word.replace you_to_u_lower "u"

  let map_time_to_tim = Word.replace time_to_tim "\\1im"
  let map_over_to_owor = Word.replace over_to_owor "\\1wor"
  let map_worse_to_wose = Word.replace worse_to_wose "\\1ose"
end