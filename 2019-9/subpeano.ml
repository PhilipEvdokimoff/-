(*вычитание чисел Пеано*)
type peano = Nil | S of peano;;

let rec (--) a1 b1 =
  match (a1, b1) with
    (S a, S b) -> a -- b
  | (Nil, a) -> Nil
  | (a, Nil) -> a;;

let dva = S (S Nil);;
let five = S (S (S dva));;

let rec int_of_peano x =
  match x with
    Nil -> 0
  | S(x) -> 1 + int_of_peano x;;

print_string "\n\n";; 
print_int (int_of_peano (five));;
print_string " - ";;
print_int (int_of_peano (dva));;
print_string " = ";;
print_int (int_of_peano (five -- dva));;
print_string "\n\n";;

