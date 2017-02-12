# 1 "lexer.mll"
 
  open Parser
  open Type

# 7 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\240\255\000\000\012\000\013\000\014\000\015\000\000\000\
    \000\000\253\255\254\255\002\000\000\000\000\000\252\255\000\000\
    \000\000\002\000\251\255\025\000\247\255\245\255\243\255\241\255\
    ";
  Lexing.lex_backtrk = 
   "\255\255\255\255\013\000\011\000\009\000\007\000\005\000\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\006\000\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_default = 
   "\255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\000\000\255\255\
    \255\255\255\255\000\000\255\255\000\000\000\000\000\000\000\000\
    ";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\011\000\011\000\011\000\011\000\011\000\000\000\011\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \011\000\000\000\011\000\000\000\000\000\000\000\000\000\000\000\
    \010\000\009\000\003\000\005\000\000\000\004\000\023\000\002\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\022\000\021\000\020\000\019\000\000\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\015\000\000\000\000\000\000\000\014\000\007\000\018\000\
    \000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\
    \000\000\000\000\012\000\017\000\008\000\013\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\011\000\011\000\000\000\255\255\011\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\011\000\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\255\255\000\000\002\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\003\000\004\000\005\000\006\000\255\255\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\007\000\255\255\255\255\255\255\013\000\000\000\017\000\
    \255\255\255\255\255\255\255\255\015\000\255\255\255\255\255\255\
    \255\255\255\255\008\000\016\000\000\000\012\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec token lexbuf =
    __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 13 "lexer.mll"
    ( token lexbuf )
# 119 "lexer.ml"

  | 1 ->
# 15 "lexer.mll"
    ( LPAREN )
# 124 "lexer.ml"

  | 2 ->
# 17 "lexer.mll"
    ( RPAREN )
# 129 "lexer.ml"

  | 3 ->
# 19 "lexer.mll"
    ( BOOL(true) )
# 134 "lexer.ml"

  | 4 ->
# 21 "lexer.mll"
    ( BOOL(false) )
# 139 "lexer.ml"

  | 5 ->
# 23 "lexer.mll"
    ( INT(int_of_string (Lexing.lexeme lexbuf)) )
# 144 "lexer.ml"

  | 6 ->
# 25 "lexer.mll"
    ( FLOAT(float_of_string (Lexing.lexeme lexbuf)) )
# 149 "lexer.ml"

  | 7 ->
# 27 "lexer.mll"
    ( PLUS )
# 154 "lexer.ml"

  | 8 ->
# 29 "lexer.mll"
    ( PLUS_DOT )
# 159 "lexer.ml"

  | 9 ->
# 31 "lexer.mll"
    ( MINUS )
# 164 "lexer.ml"

  | 10 ->
# 33 "lexer.mll"
    ( MINUS_DOT )
# 169 "lexer.ml"

  | 11 ->
# 35 "lexer.mll"
    ( TIMES )
# 174 "lexer.ml"

  | 12 ->
# 37 "lexer.mll"
    ( TIMES_DOT )
# 179 "lexer.ml"

  | 13 ->
# 39 "lexer.mll"
    ( DIVIDED )
# 184 "lexer.ml"

  | 14 ->
# 41 "lexer.mll"
    ( DIVIDED_DOT )
# 189 "lexer.ml"

  | 15 ->
# 43 "lexer.mll"
    ( EOF )
# 194 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; 
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

