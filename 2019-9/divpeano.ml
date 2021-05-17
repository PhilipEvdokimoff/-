(*деление чисел Пеано*)
type peano = Nil | S of peano;;

let rec (--) a1 b1 =
  match (a1, b1) with
    (S a, S b) -> a -- b
  | (Nil, a) -> Nil
  | (a, Nil) -> a;;

let rec (//) a b =
  match (a, b) with
    (Nil, b) -> Nil
  | (b, Nil) -> failwith "division by 0"
  | (a, b) when a = b -> S Nil
  | _ -> let sub = (a -- b) in if sub = Nil 
					then Nil 
			       else S (sub // b);;

let tri = S (S (S Nil));;
let six = S (S (S tri));;

let rec int_of_peano x =
  match x with
    Nil -> 0
  | S(x) -> 1 + int_of_peano x;;

print_string "\n\n";; 
print_int (int_of_peano (six));;
print_string " : ";;
print_int (int_of_peano (tri));;
print_string " = ";;
print_int (int_of_peano (six // tri));;
print_string "\n\n";;

