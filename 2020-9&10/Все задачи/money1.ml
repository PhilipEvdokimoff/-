let money_to_change = read_int();;
let coins_for_change = [1;2;3;4;5];;

let rec change n a =
	if n = 0 then Some []
	else if n < 0 then None
	else match a with
		 | a1::at -> ( match (change (n - a1) a) with
		 			   | Some l -> Some (a1::l)
		 			   | None -> change n at )
		 | [] -> None;;
		 
match change money_to_change coins_for_change with
	  Some l -> List.iter (Printf.printf "%d") l
	| None -> print_string "No change...";;
