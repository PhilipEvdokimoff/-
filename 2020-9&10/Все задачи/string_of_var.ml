(* строка из Var-ов *)

type l = | Var of string
		 | App of l * l
		 | Abs of string * l ;;

let rec string_of_var t =
	match t with
	| Var k -> k
	| App (n,m) -> "(" ^ string_of_var n ^ ")" ^ "(" ^ string_of_var m ^ ")"
	| Abs (p,l) -> "\\" ^ p ^ "." ^ string_of_var l ;;

let t = Var "a" ;;
let p = App((Var "a"), (Var "b")) ;;
let q = Abs("a", (Var "b")) ;;
let r = Abs("f", Abs("x", App(Var "f", App(Var "f", Var "x")))) ;;

print_string("\n") ;;
print_string(string_of_var t) ;; print_string("\n") ;;
print_string(string_of_var p) ;; print_string("\n") ;;
print_string(string_of_var q) ;; print_string("\n") ;;
print_string(string_of_var r) ;;
print_string("\n\n") ;;
