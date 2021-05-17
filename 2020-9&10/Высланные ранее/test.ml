let s = open_in "x.txt";;

(* 1 *)

let rec lis1 l a = 
	match l with
	| [] -> []
    | x::t -> if x<a then x::(lis1 t a) 
              else (lis1 t a);;
              
let rec lis2 l a =
	match l with
	| [] -> []
    | x::t -> if x>=a then x::(lis2 t a) 
              else (lis2 t a);;
              
let rec sort l =
	match l with
	| [] -> []
    | h::t -> (sort (lis1 t h))@[h]@(sort (lis2 t h));;
    
let s = sort s ;;


print_string s ;;
(*let n = 0 ;;

for i in s:
	for j in s:
		if j^(j+1) == "\n" then n += 1 ;;

print_int n ;;*)

(* 2 *)

(*let m = 0 ;;
let h = "" ;;

let rec f a m h = match a with
	| "0" or "1" or "2" or "3" or "4" or "5" or "6" or "7" or "8" or "9" -> m += 1 ; h = h^a
	| _ -> None ;;
	
for i in s:
	for j in s:
		f j m h*)
		
(*let l = "alabama" ;;

let rec number_of_char l x m n =
    if n = String.length l then m 
	else if l.[n] = x then number_of_char l x (m+1) (n+1)
	else number_of_char l x m (n+1) ;;

print_int (number_of_char l "am" 0 0) ;;*)
