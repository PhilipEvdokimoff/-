(* - l1...ln, x.   print all p: lp=x *)

let rec is_lp_x l x p =
	match l with
	| [] -> []
	| l1::ln -> if l1 = x then p::(is_lp_x ln x (p+1))
						  else is_lp_x ln x (p+1);;

let l = [1;2;5;3;4;5;6;5;5];;
let x = 5;;
let p = is_lp_x l x 0;;

let rec print_list l = 
	match l with
	| [] -> ()
	| h::t -> print_int h ; print_string " " ; print_list t;;

print_string "\n\n";;
print_list p;;
print_string "\n\n";;
