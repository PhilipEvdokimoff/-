(*законченная задача с ферзями*)

print_string "\n";;
print_string "Column length: ";;
let x = read_int();;
print_string "\n";;

let rec list_length l = 
    match l with 
    | [] -> 0
    | h::t -> 1 + list_length t;;

let rec check u m d l =
	match l with 
	| h::t -> if (h <> u) && (h <> m) && (h <> d) then check (u+1) m (d-1) t
			  else false
    | _ -> true;;

let rec main l x =
    if (list_length l) = (x + 1) then l
    else match l with 
         | h::h1::t -> if h = x then main ((h1 + 1)::t) x
		               else if check (h + 1) h (h - 1) (h1::t) = true then main (0::h::h1::t) x
		               else main ((h + 1)::h1::t) x
         | _ -> main (0::l) x;;

let rec print_list l =
    match l with 
    | h::h1::t -> (print_int h ; print_string " " ; print_list (h1::t))
    | _ -> print_string "That's all.\n \n";; 

let l = (main [0] x);;

print_list l;;

let rec print_queen n x =
    if x = 0 then print_string "\n"
    else if n = 0 then (print_string "• " ; print_queen (n - 1) (x - 1))
    else (print_string "· " ; print_queen (n - 1) (x - 1));;

let rec print_board l x =
    match l with 
    | h::h1::t -> print_string " " ; print_queen h x ; print_board (h1::t) x
    | _ -> print_string " ";;

print_board l x;;
print_string "\n";;
