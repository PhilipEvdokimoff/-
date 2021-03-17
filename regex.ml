(* РАЗБОР РЕГУЛЯРНЫХ ВЫРАЖЕНИЙ *)

type regex = Concat of regex * regex | Alt of regex * regex | Char of char | Empty | Range of char * char ;;


(* Основной код *)

let pos = ref 0;;
let line = "3(56|4)";; (*let l = Concat(3, Alt(Concat(5, 6), 4));;*)

let rec parse_s() = 
	let t = parse_t() in
	if line.[!pos] = '|' then (pos := !pos + 1 ; Alt(t, parse_s()))
	else t
	
and parse_t() = match line.[!pos] with
	| '(' -> pos := !pos + 1 ;
			 let s = parse_s() in
			 if line.[!pos] <> ')' then failwith "Failwith" ;
			 pos := !pos + 1 ; Concat (s, parse_t())
	| ')' | '|' -> Empty
	| _ -> Char (line.[!pos]);;
	

(* Проверка *)
	
let rec print_regex (regex) = match regex with
	| Concat(x,y) -> (print_regex(x))^(print_regex(y))
	| Alt(x,y) -> (print_regex(x))^"|"^(print_regex(y))
	| Char(x) -> String.make 1 x
	| Empty -> ""
	| Range(x,y) -> Printf.sprintf "[%c-%c]" x y;;

print_string("\nYour regular expression: ");;
pos := 0;;
print_string(print_regex(parse_s()));;
pos := 0;;
print_string(print_regex(parse_t()));;
print_string("\n\n");;
