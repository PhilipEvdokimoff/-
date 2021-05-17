(*вывод всех пар чисел*)
let rec number_with_k k i n wd =
	if i <= n then (if i <> k then (Printf.printf "(%*d,%*d) " wd i wd k;)
	else Printf.printf "%*s" (2*wd+4) ""; number_with_k k (i+1) n wd);;

let rec number k n =
	if k<=n then (number_with_k k 1 n 2; print_string "\n"; number (k+1) n);;

let n = 100;;

print_string "\n\n";;
number 1 n;;
print_string "\n\n";;
