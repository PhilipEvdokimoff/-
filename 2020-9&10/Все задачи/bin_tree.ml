(* ДВОИЧНЫЕ ДЕРЕВЬЯ ПОИСКА *)

type 'a tree = Leaf | Node of ('a tree) * ('a tree) * 'a ;;


(* 1. Простые функции *)

let rec mem tree a = match tree with
	| Leaf -> false
	| Node (l,r,n) -> if n = a then true
				 	  else if n < a then mem r a
				 	  	   else mem l a;;

let find tree a b =
	if mem tree a then a
	else b;;

let rec add tree a = match tree with
	| Leaf -> Node (Leaf, Leaf, a)
	| Node (l,r,n) -> if n = a then tree
					  else if a < n then Node (add l a, r, n) 
					  	   else Node (l, add r a, n);;
					 

(* 2. Сложные функции *)

	(* Удаление элемента *)

(* Вариант Егора оказался нерабочим, я его поправил, но сделать полностью рабочим не смог.

let rec find_min tree = match tree with
	| Leaf -> failwith "1"
	| Node (l,r,n) when l <> Leaf -> find_min l
	| Node (l,r,n) when l = Leaf -> n
	| _ -> failwith "2";;
	
let rec delete tree a = match tree with
	| Leaf -> Leaf (*failwith "3"*)
	| Node (l,r,n) -> if n = a then ( match tree with
									  | Leaf -> Leaf (*failwith "4"*)
									  | Node (Leaf,Leaf,a) -> Leaf
									  | Node (Leaf,r,a) -> r
									  | Node (l,Leaf,a) -> l
									  | Node (l,r,a) -> Node (l, delete r (find_min r), a) )
			  
					  else (if n < a then Node (delete l a, r, n)
					  		else Node (l, delete r a, n));;*)
					  		
let sum_tree l r =
	let rec delete_max tree = match tree with
		| Node (l,r,n) -> let x = ( if r = Leaf then (Leaf,n) 
						            else delete_max r ) in (Node (l, fst x, n), snd x) 
		| _ -> failwith "" in Node (l, fst (delete_max r), snd (delete_max r));;
	
let rec delete tree a = match tree with
	| Leaf -> Leaf
	| Node (l,r,n) -> if n > a then Node (delete l a, r, n) 
					  else if n < a then Node (l, delete r a, n) 
					  else ( if r = Leaf then l 
							 else sum_tree l r );; 
		
		
	(* Печать дерева *)

let rec print_prefix prefix = match prefix with
	| [] -> ()
	| [true] -> print_string "+--"
	| [false] -> print_string "\\--"
	| true::p -> print_string "|  " ; print_prefix p
	| false::p -> print_string "   " ; print_prefix p;;

let print_indent s prefix =
	print_prefix prefix;
	print_string (s^"\n");;

let rec print_tree node prefix = match node with
	| Leaf -> print_indent "*" prefix
	| Node (l,r,n) -> print_indent (string_of_int n) prefix;
					  print_tree l (prefix @ [true]);
					  print_tree r (prefix @ [false]);;

let rec full_tree n m =
	if n > 0 then Node (full_tree (n-1) (2*m+0), full_tree (n-1) (2*m+1), m)
	else Leaf;;


(* 3. Проверка *)

let t = Node (Node (Leaf, Leaf, 1), (Node (Leaf, Leaf, 7)), 4);;

print_tree t [];;
Printf.printf "%b" (mem t 5);;
let t = add t 5;;
print_tree t [];;
Printf.printf "%b" (mem t 5);;
print_int (find t 4 (-1));;
let t = delete t 5;;
Printf.printf "%b" (mem t 5);;
print_tree t [];;
