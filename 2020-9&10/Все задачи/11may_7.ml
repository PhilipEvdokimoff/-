(* задание 7 --- (почти) Красивая запись 4, 5, 6 заданий *)

let k = read_int();;
let n = read_int();;

let rec power n = (* возведение в стерпень *)
    if n = 0 then 1 
    else (2 * power (n-1));;

let rec binary_list k l = (* перевод в двоичную CC в виде списка *)
	if k <= 0 then l 
	else if ((k-((k/2)*2)) = 1) then (binary_list (k/2) (true::l))
	else (binary_list (k/2) (false::l));;

let rec add_zero l n = (* добавляет нули *)
	if  List.length l > n then []
	else if List.length l = n then l
	else add_zero (false::l) n;;
 
(* печать булевского списка для 4, 5, 6 заданий

let rec print_bool_list l =
    match l with
    | hd::tl -> if hd = true then (print_string "true_" ; print_bool_list tl)
	            else (print_string "false_" ; print_bool_list tl)
    | _ -> print_string ")";;*)
    
let rec binary_int n m = (* перевод в двоичную CC в int'е *)
	if n <= 0 then m 
	else if ((n-((n /2)*2)) = 1) then (binary_int (n/2) ((m*10)+1))
	else (binary_int (n/2) (m*10));;

let rec final_print_bool_list l n = (* (почти) красивая печать булевского списка *)
    match l with
    | hd::tl -> if (hd = true) then (print_int ((binary_int n 1)/10); print_string" -> true \n"; final_print_bool_list tl (n+1))
	            else (print_int ((binary_int n 1)/10); print_string" -> false \n"; final_print_bool_list tl (n+1))
    | _ -> None;;

final_print_bool_list (add_zero (binary_list k []) (power n)) 0 ;;
