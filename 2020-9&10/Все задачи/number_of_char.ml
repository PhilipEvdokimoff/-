(* сколько раз встречается буква в строке *)

let l = "alabama" ;;

let rec number_of_char l x m n =
    if n = String.length l then m 
	else if l.[n] = x then number_of_char l x (m+1) (n+1)
	else number_of_char l x m (n+1) ;;

print_int (number_of_char l 'a' 0 0) ;;
