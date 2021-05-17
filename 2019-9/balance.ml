(*перевод из 10-й СС в 2-ю*)
let rec n_to_2_list n =
	if n = 0 then []
	else if n mod 2 = 0 then (n_to_2_list (n/2) @ [0])
	else (n_to_2_list (n/2) @ [1]);;

let n = (read_int ());;  

print_string "\n\n";;
List.iter (fun x -> print_int x) (n_to_2_list n) ;;
print_string "\n\n";;
