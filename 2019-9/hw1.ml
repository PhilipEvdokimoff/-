(* l1...ln, x.   ?p:  lp=x *)

let rec is_lp_x l x p =
	match l with
	| [] -> -1 (* p doesn't exist *)
	| l1::ln -> if l1 = x then p
			      else is_lp_x ln x (p+1);;

let l = [1;2;3;4;5;6;];;
let x = 5;;
let p = is_lp_x l x 0;;

print_string "\n\n";;
print_int (p);;
print_string "\n\n";;
