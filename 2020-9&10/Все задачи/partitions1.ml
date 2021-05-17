(* разбиения числа (нечестные) *)

print_string "\nNumber: ";;
let n = read_int();;

let rec partitions n m =
	if n > 1 && m = 0 then 1
	else if m <> 0 then ((partitions m (m - 1)) + (partitions n (m - 1)))
	else 1;;

print_string "\nCount of partitions: ";;
print_int(partitions n (n - 1));;
print_string "\n\n";;
