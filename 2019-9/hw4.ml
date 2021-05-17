(* - l1...ln : int, ?p,q: p <> q & GCD(lp,lq) = 15 // greatest common divisor + Euclid's alg. *)

let rec gcd (a,b) =
	match (a,b) with
	| (0,b) -> b
	| (a,0) -> a
	| (a,b) -> if a < b then gcd ((b mod a),a)
			    else gcd ((a mod b),b);;

let rec is_lp_x l x p =
	match l with
	| [] -> -1 (* p doesn't exist *)
	| l1::ln -> if gcd (l1,x) = 15 then p
				       else is_lp_x ln x (p+1);;

let rec pq l p =
	match l with
	| [] -> (-1,-1)
	| h::t -> let q = is_lp_x t h (p+1) in if q = -1 then pq t (p+1)
							 else (p,q);;

let l = [1;2;3;4;5;6;6;15;31];;
let x = 5;;
let (p,q) = pq l 0;;

print_string "\n\n";;
Printf.printf "(%i,%i)" p q;;
print_string "\n\n";;

