module OwoifyMappings = struct
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
end