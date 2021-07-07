# Power Query M Language
```M
(texto as text) =>
let
    Fonte = Text.Combine(List.ReplaceMatchingItems(Text.ToList(texto), List.Zip({Tabela_Acentos[De], Tabela_Acentos[Para]})))
in
    Fonte
 ```
```M
# Tabela_Acentos
let
    Fonte = Table.FromRows({
                               {"ã", "a"}, {"â", "a"}, {"á", "a"}, {"à", "a"},
                               {"é", "e"},{"è", "e"}, {"ê", "e"},
                               {"í", "i"}, {"ì", "i"}, {"î", "i"},
                               {"ó", "o"}, {"ò", "o"}, {"õ", "o"}, {"ô", "o"},
                               {"ú", "u"}, {"ù", "u"}, {"û", "u"}, 
                               {"ä", "a"}, {"ë", "e"}, {"ï", "i"}, {"ö", "o"}, {"ü", "u"},
                               {"ñ", "n"},
                               {"Ã", "A"}, {"Â", "A"}, {"Á", "A"}, {"À", "A"}, 
                               {"É", "E"}, {"È", "E"}, {"Ê", "E"}, 
                               {"Í", "I"}, {"Ì", "I"}, {"Î", "I"},
                               {"Ó", "O"}, {"Ò", "O"}, {"Õ", "O"}, {"Ô", "O"},
                               {"Ú", "U"}, {"Ù", "U"}, {"Û", "U"},
                               {"Ä", "A"}, {"Ë", "E"}, {"Ï", "I"}, {"Ö", "O"}, {"Ü", "U"},
                               {"Ñ", "N"}
                              },
                               {"De", "Para"}
                             )

in
    Fonte
```
