(* поиск самой частой строки *)

(* печать списка из строк

let a = "string a";;
let b = "string b";;
let c = "string c";;

let l = a::b::c::[];;

let rec list_to_string l =
	match l with
	| [] -> ""
	| h::t -> print_string h; print_string "; "; list_to_string t;; 

list_to_string l;;*)

(* Сортировка списка из чисел *)

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


let l = [3;6;7;1;1;2;4;5;1;4];;


(* Печать списка из чисел *)
let rec print_int_list l =
	match l with
	| [] -> ""
	| h::t -> print_int h; print_string ";"; print_int_list t;;

print_string "Отсортированный список l:";; print_string "\n";;
print_int_list (List.sort compare l);;


(* Печать списка из пар чисел *)
let rec print_int_list1 l =
	match l with
	| [] -> ""
	| (a,n)::t -> print_int a; print_string ";"; print_int n; print_string "\n"; print_int_list1 t;;


(* Сортировка списка из пар чисел *)

let rec func l x i =
	match l with
	| h::t -> if x = h then func t x (i+1)
			  else (x,i)::(func t h 1)
	| [] -> [(x,i)];;
	
let rec lis1_pair l a =
	match l with 
	| [] -> []
    | (x,y)::t -> if y>a then (x,y)::(lis1_pair t a) 
              else (lis1_pair t a);;

let rec lis2_pair l a =
	match l with
	| [] -> []
    | (x,y)::t -> if y<=a then (x,y)::(lis2_pair t a) 
              else (lis2_pair t a);;

let rec sort_pair l =
	match l with
	| [] -> []
    | (x,y)::t -> (sort_pair (lis1_pair t y))@[(x,y)]@(sort_pair (lis2_pair t y));;
 
let l = sort l;;
let l = match l with
	| h::t -> func t h 1
	| [] -> [];;	
let l = sort_pair l;;

(* Печать списка из пар чисел (крутая) *)
let rec print_list l =
	match l with
	| (a,b)::c -> (print_string ("("^(string_of_int a)^","^(string_of_int b)^")\n"); print_list c)
    | [] -> ();;


print_string "\n\n";;

(* Печать трёх самых частых чисел *)
let print_top l =
print_string "\nThe most frequent numbers:";
	(match l with 
	| (a,x)::(b,y)::(c,z)::t -> print_string ("\n"^" 1st - "^(string_of_int a)^"\n"^" 2nd - "^(string_of_int b)^"\n"^" 3rd - "^(string_of_int c)^"\n")
	| _ -> ());
print_string "\n";;

print_top l;;
print_list l;;
print_top l;;
