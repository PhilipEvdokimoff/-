(*все возможные пары ферзей в 1-й и 2-й колонках*)

print_string "\n";;
print_string "Colomn length: ";;
let n = read_int ();;

let rec main p l n =
	match p with
	| (a,b) -> if a = n then l
			   else if b = n then main ((a + 1),0) l n
			   else if ((a - 1) <> b) && (a <> b) && ((a + 1) <> b) then main (a,(b + 1)) ((a,b)::l) n
			   else main (a,(b + 1)) l n;;
			   
let rec print_queen l =
	match l with
	| (a,b)::t -> (print_int a ; print_string " " ; print_int b ; print_string "\n" ; print_queen t)
	| _ -> print_string "\nThat's all.";;

print_string "\n\n";;
print_queen (main (0,0) [] n);;
print_string "\n\n";;
