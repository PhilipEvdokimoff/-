(*умножение чисел Пеано*)
type peano = One | S of peano;;

let rec ( ++ ) a b = 
  match a with
    One -> S b
  | S a -> S (a ++ b);;

let rec ( ** ) a b = 
  match a with
    One -> b
  | S a -> b ++ (a ** b);;

let tri = S (S One);;

let rec int_of_peano x =
  match x with
    One -> 1
  | S(x) -> 1 + int_of_peano x;;

print_string "\n\n";; 
print_int (int_of_peano (tri));;
print_string " * ";;
print_int (int_of_peano (tri));;
print_string " = ";;
print_int (int_of_peano (tri ** tri));;
print_string "\n\n";;

