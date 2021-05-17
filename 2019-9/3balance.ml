(*перевод 3-й сбалансированной СС из списка в число*)
let rec balance l = (*l = [1;0;-1]*)
	match l with
	| h::t(*h = 1 t = [0;-1]*) -> if h = -1 then (print_string "$" ; balance t)
                                            else (print_int h ; balance t)
    | [] -> ();;

let l = [1;0;1;1;0;-1];;

print_string "\n\n";;
balance l;;
print_string "\n\n";;
