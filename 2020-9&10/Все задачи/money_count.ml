let money_to_change = read_int();;
let coins_for_change = [1;2;3;4;5];;

let rec change n a =
	if n = 0 then 1
	else if n < 0 then 0
	else match a with
		 | a1::at -> change (n - a1) a + change n at
		 | [] -> 0;;

Printf.printf "\nCount: %d\n\n" (change money_to_change coins_for_change);;
