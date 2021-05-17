let rec lis1 l a = match l with [] -> []
                               |x::b->if x<a then x::(lis1 b a) 
                                              else (lis1 b a);;
let rec lis2 l a = match l with [] -> []
                               |x::b->if x>=a then x::(lis2 b a) 
                                             else (lis2 b a);;
let rec sort l = match l with [] -> []
                             |a::b->(sort (lis1 b a))@[a]@(sort (lis2 b a));;

let rec print_list l i = if i = 0 then ()
                                  else match l with (a,b)::c -> (print_string ("("^a^","^(string_of_int b)^")\n"); print_list c (i-1))
                                                   |[] -> ();;
