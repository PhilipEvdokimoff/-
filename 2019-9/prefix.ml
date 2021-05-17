(*проверка префиксности*)
let rec mixes (a,b) =
  	match (a,b) with
    | (a1::al,b1::bl) -> if a1=b1 then mixes (al,bl)  
                                  else false
  	| (_,_) -> true;;

let rec prefix_mixes p l =
   	match l with
	| [] -> false
    | h::t -> (mixes (h,p)) || (prefix_mixes p t);;
   
let rec is_prefix l = 
   	match l with
	| [] -> true
    | h::t -> (not (prefix_mixes h t)) && (is_prefix t);;

let l = [[1;0;1;1;0];[1;0;0;1;0;1];[1;1;1;0];[1;0]];;

print_string "\n\n";;
Printf.printf "Result: %b" (is_prefix l);;
print_string "\n\n";;

(*задания для сов префиксноти
  - l1...ln, x.   ?p:  lp=x
  - l1...ln, x.   print all p: lp=x
  - l1...ln, ?p,q: p<>q & lp=lq
  - l1...ln : int, ?p,q: p <> q & GCD(lp,lq) = 15 // greatest common divisor + Euclid's alg.
 *)
