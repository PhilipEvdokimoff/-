(*type optional = None | Some of a';;*)

let print_list lis=
let rec sup_f l=
match l with
a::b::c->print_int a;print_string";";sup_f (b::c)
|a::b->print_int a;print_string"]"
|[]->print_string"]" in
print_string"[";
sup_f lis;;

let print_array matr=
let rec sup_f i=
if i = (Array.length matr) then print_string"|]"
                           else print_int(matr.(i));print_string";";sup_f (i+1) in
print_string"[|";
sup_f 0;;

print_array [|1;2;3|];;
print_string"\n";;

print_list [1;2;3;17];;
(*
let f x = 
...
let h n =  g(x - 1 + n) in
...
*)
