(* количество различных переменных в списке *)

type l = | Var of string
		 | App of l * l
		 | Abs of string * l ;;

let rec check_include x l =
	match l with
	| a::b -> if a = x then true else (check_include x b)
	| [] -> false ;;

let rec fin l1 l2=
	match l2 with
	| a::b -> if (check_include a l1) then (fin l1 b) else (fin (a::l1) b)
	| [] -> l1 ;;

let rec list_of_dif_var t = 
	match t with
	| Var a -> [a]
	| App (t1,t2) -> (fin [] (list_of_dif_var t1) @ (list_of_dif_var t2))
	| Abs (a,t) -> (fin [] (a::(list_of_dif_var t))) ;;

let t = Var "a" ;;
let p = App((Var "a"), (Var "b")) ;;
let q = Abs("a", (Var "b")) ;;
let r = Abs("f", Abs("x", App(Var "f", App(Var "f", Var "x")))) ;;

print_string("\n") ;;
print_int(List.length (list_of_dif_var t)) ;; print_string("\n") ;;
print_int(List.length (list_of_dif_var p)) ;; print_string("\n") ;;
print_int(List.length (list_of_dif_var q)) ;; print_string("\n") ;;
print_int(List.length (list_of_dif_var r)) ;;
print_string("\n\n") ;;

