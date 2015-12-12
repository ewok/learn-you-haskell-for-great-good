translate languageTo languageFrom text = languageFrom ++ " " ++ languageTo ++ " " ++ text

translateFromSpanishToRussian = translate "russian" "spanish"
translateFromEnglishToRussian = translate "russian" "english"
translateToRussian = translate "russian"

main =
  putStrLn (translateFromSpanishToRussian "sp_to_russ" ++ "\n" ++
  translateFromEnglishToRussian "eng_to_russ" ++ "\n" ++
  translateToRussian "german" "germ_to_russ")
