(*сумма списка*)
let rec list_summ l =
   match l with
     [] -> 0
   | h::t -> h + list_summ t;;

let spsk = 1::2::3::4::5::6::7::[];;

print_string "\n\n";;
print_int (list_summ spsk);;
print_string "\n\n";;
