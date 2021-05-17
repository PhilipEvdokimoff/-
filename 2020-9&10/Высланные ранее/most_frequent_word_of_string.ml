(* поиск самого частого слова *)


(* Сортировка списка (любого) *)

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


(*
let a = "string a";;
let b = "string b";;
let c = "string c";;

let l = b::a::c::a::c::a::[];;
let l = sort l;;

let z = "qwertyusdfghjaaadddl";;


(* печать списка из строк *)
let rec list_to_string l =
	match l with
	| [] -> ""
	| h::t -> print_string h; print_string "; "; list_to_string t;; 


(* Разбиение строки на список строк *)
let rec split_string s l i =
	if i = (String.length s) then l
	else split_string s (l@[(String.make 1 s.[i])]) (i+1);;
	
let z = split_string z [] 0;;
list_to_string z;;
*)


(* Разбиение строки на слова *)
let rec split_string1 s1 s2 l i =
	if i < (String.length s1) then 
		(if (let x = s1.[i] in ('a' <= x && x <= 'z') || ('A' <= x && x <= 'Z')) then split_string1 s1 (s2^(String.make 1 s1.[i])) l (i+1) 
		 else split_string1 s1 "" (if s2 = "" then l else s2::l) (i+1))
	else if s2 = "" then l else s2::l;;

(* Сортировка списка из пар строк и чисел *)

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


(*let z = match z with
	| h::t -> func t h 1
	| [] -> [];;	
let z = sort_pair z;;*)


(* Печать списка из пар строк и чисел *)
let rec print_list l =
	match l with
	| (a,b)::c -> (print_string ("("^a^","^(string_of_int b)^")\n"); print_list c)
    | [] -> ();;
    
(*print_string "\n";;
print_list z;;*)


(* Открытие файла *)
let f = open_in "text2.txt";;


let rec main f l =
    try let c = input_line f in main f (split_string1 c "" l 0)
    with End_of_file -> l;;
    
let l = main f [];;
let l = sort l;;
let l = 
	match l with
	| h::t -> func t h 1
	| [] -> [];;
let l = sort_pair l;;


(* Печать трёх самых частых слов *)
let print_top l =
print_string "\nThe most frequent words:";
	(match l with 
	| (a,x)::(b,y)::(c,z)::t -> print_string ("\n"^" 1st - "^a^"\n"^" 2nd - "^b^"\n"^" 3rd - "^c^"\n")
	| _ -> ());
print_string "\n";;

(* Это нужно для простоты поиска начала программы в случае длинного текста *)
print_string "\n– – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – \n– – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – \n– – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – THE BEGINNING OF THE PROGRAM – – – \n";;

print_top l;;
print_list l;;
print_top l
