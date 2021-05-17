(* ОЛИМПИАДНАЯ ЗАДАЧА ПРО МАРСИАН *) (*Да что тут вообще делать?!*)

type 'a marsianian = Son | Father of ('a marsianian) * ('a marsianian) * 'a ;;


(* Чтение и создание массива *)

let n = read_int();;
let m = [];;

let rec input_list n = 
	if n = 0 then [] else [read_line()] @ (input_list (n-1));;
	
let rec fancy s n = 
	if n >= String.length s then [] else
	if s.[n] = '0' && n = (String.length s - 1) then [] else
	if s.[n] = '0' && n <> (String.length s - 1) then failwith"" else [(int_of_string (String.make 1 s.[n]))] @ (fancy s (n+1));;
	
let lst = List.map (fun x -> fancy x 0) (input_list n);;

List.iter (fun x -> List.iter (fun y -> print_int y;print_string " ") x) lst;;

