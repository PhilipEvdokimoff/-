(*проверка совершенной префиксности*)
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

let rec check p q t i =
	match (p,q) with
	| (p1::ps,q1::qs) -> if (p1=q1) && (i<t) then check ps qs t (i+1)
										  	 else (if p1<>q1 && i=t then true
										  	 else (if p1=q1 && i=t then false
										  	 else false))
	| _ -> false;;

let is_perf_prefix l =
	match l with
	| [] -> false
	| p::q -> if (check p q t i = true) && (is_prefix l = true) then true
	| _ -> false;;

let l = [[1;0;1;1;0];[1;0;0;1;0;1];[1;1;1;0];[1;0]];;

print_string "\n\n";;
Printf.printf "Result: %b" (is_perf_prefix l);;
print_string "\n\n";;