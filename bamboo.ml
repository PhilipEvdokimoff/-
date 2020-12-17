(* СБАЛАНСИРОВАННЫЕ ДЕРЕВЬЯ, БАМБУК *)

type 'a tree = Leaf | Node of ('a tree) * ('a tree) * 'a ;;


(* 1. Простые функции *)

let rec is_bamboo tree = match tree with
	| Node (Leaf,r,n) -> is_bamboo r
	| Node (l,Leaf,n) -> is_bamboo l
	| Leaf -> true
	| _ -> false
	
let rec min_max_depth tree = match tree with
	| Leaf -> (0,0)
	| Node (l,r,n) -> (let (x1,y1) = min_max_depth l in let (x2,y2) = min_max_depth r in (min x1 x2) + 1, (max y1 y2) + 1 );; 
	
let is_balanced tree =
	let (x,y) = min_max_depth tree in
	if y - x <= 1 then true
	else false;;
	
	
(* 2. Сложные функции *)

(*let make_bamboo

let make_tree m n = (* m – min depth, n – max depth *)

(* посторить дерево по списку глубин *)*)


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

let t = Node (Leaf, Node (Leaf, Node (Leaf, Leaf, 3), 2), 1);;
let s = Node (Node (Leaf, Leaf, 3), Node (Leaf, Node (Leaf, Leaf, 3), 2), 1);;

print_tree t [];;
Printf.printf "%b" (is_bamboo t);;
let (x,y) = min_max_depth t;;
Printf.printf "(%d, %d)" x y;;
print_tree s [];;
Printf.printf "%b" (is_balanced s);;
