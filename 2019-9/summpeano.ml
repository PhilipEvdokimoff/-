type peano = Nil | S of peano;;
(*сложение чисел Пеано*)
let rec ( ++ ) a b = 
  match a with
    Nil -> b
  | S a -> S (a ++ b);;

let dva = S (S Nil);;

let rec int_of_peano x =
  match x with
    Nil -> 0
  | S(x) -> 1 + int_of_peano x;;

print_string "\n\n";; 
print_int (int_of_peano (dva));;
print_string " + ";;
print_int (int_of_peano (dva));;
print_string " = ";;
print_int (int_of_peano (dva ++ dva));;
print_string "\n\n";;

