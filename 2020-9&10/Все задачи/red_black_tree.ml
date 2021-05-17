(* КРАСНО-ЧЁРНЫЕ ДЕРЕВЬЯ *)

type colour = Red | Black;;
type 'a rbtree = Leaf | Node of colour * ('a * 'a rbtree * 'a rbtree);;


(* 1. Простые функции *)

let rotate tree = match tree with
	| Node (c1, (a, t1, Node (c2, (b,t2,t3)))) -> Node (c1, (b, Node (c2, (a,t1,t2)), t3))
	| _ -> tree;;
	
let rec mem tree a = match tree with
	| Leaf -> false
	| Node (c, (n,l,r)) -> if n = a then true
				 	  else if n < a then mem r a
				 	  	   else mem l a;;

						  	   
(* 2. Сложные функции *)

	(* Добавление элемента *)

(*let red_in_tree tree = match tree with
	| (_, Node (Red, _), _) | (_, _, (Red, _)) -> true
	| _ -> false;;

let rec fix_tree tree = match tree with
	| Node (Black, (x, Node (Red, l), Node (Red, r))) when red_in_tree l || red_in_tree r
		-> Node (Black, x, Node (Red, l), Node (Red, r))
	| Node (Black, (v, Node (Red, (lv, Node (Red, ll), lr)), r)) 
		-> Node (Black, (v, Node (Red, (lv, Node (Red, ll), Node (Red, v, lr, r)));;

let rec bare_add tree a = match tree with
	| Leaf -> Node Red a Leaf Leaf
	| Node (c,(x,l,r)) when a < x -> fix_tree (Node (c,(x,bare_add l a,r)))
	| Node (c,(x,l,r))			  -> fix_tree (Node (c,(x,l,bare_add r a)));;
	
let add tree a = match bare_tree a with
	| dflt -> dflt;; ???*)
	
	
	(* Удаление элемента *)


	(* Печать дерева (без цветов) *)

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
	| Node (c, (n,l,r)) -> print_indent (string_of_int n) prefix;
					  	   print_tree l (prefix @ [true]);
					  	   print_tree r (prefix @ [false]);;

let rec full_tree n m c =
	if n > 0 then Node (c, (m, full_tree (n-1) (2*m+0) c, full_tree (n-1) (2*m+1) c))
	else Leaf;;


(* 3. Проверка *)

let t = Node (Black, (4, Node (Black, (1, Leaf, Leaf)), (Node (Black, (5, Node (Black, (2, Leaf, Leaf)), Node (Black, (3, Leaf, Leaf)))))));;

print_tree t [];;
let t = rotate t;;
print_tree t [];;
let t = rotate t;;
print_tree t [];;
(*let t = add t 6;;
print_tree t [];;*)
