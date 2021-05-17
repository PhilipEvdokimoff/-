(* количество Var-ов *)

type l = | Var of string
		 | App of l * l
		 | Abs of string * l ;;

let rec number_of_var t =
	match t with
	| Var _ -> 1
	| App (t1,t2) -> number_of_var t1 + number_of_var t2
	| Abs (_,t) -> number_of_var t ;;

let t = Var "a" ;;
let p = App((Var "a"), (Var "b")) ;;
let q = Abs("a", (Var "b")) ;;

print_int(number_of_var q) ;;

