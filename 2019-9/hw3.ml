(* - l1...ln, ?p,q: p<>q & lp=lq *)

let rec is_lp_x l x p =
	match l with
	| [] -> -1 (* p doesn't exist *)
	| l1::ln -> if l1 = x then p
			      else is_lp_x ln x (p+1);;

let rec pq l p =
	match l with
	| [] -> (-1,-1)
	| h::t -> let q = is_lp_x t h (p+1) in if q = -1 then pq t (p+1)
							 else (p,q);;

let l = [1;2;3;4;5;6;6];;
let x = 5;;
let (p,q) = pq l 0;;

print_string "\n\n";;
Printf.printf "(%i,%i)" p q;;
print_string "\n\n";;
