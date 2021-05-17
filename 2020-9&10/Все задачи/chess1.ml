(*расстановка ферзей*)
let rec check row col places =
	match places with
	| [] -> true
	| h::t -> if h = row then false
			  else if h = row + col then false
			  else if h = row - col then false
			  else true;;

let row = 3;;
let col = 5;;
let places = [1;2;3;4;5;6];;

print_string "\n\n";;
Printf.printf "Result: %b" (check row col places);;
print_string "\n\n";;
