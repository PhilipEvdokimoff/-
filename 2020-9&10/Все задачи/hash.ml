(* хэш-интрефейс *)

(*type ('a,'b) t

val create: ('a->int) -> int -> ('a,'b) t
val add: ('a,'b) t -> 'a -> 'b -> 'b option
val mem: ('a,'b) t -> 'a -> bool
val find: ('a,'b) t -> 'a -> 'b option
val delete: ('a,'b) t -> 'a -> 'b option

val iter: ('a,'b) t -> (('a*'b) -> unit) -> unit
val fold: ('a,'b) t -> (('a*'b) -> 'c -> 'c) -> 'c -> 'c*)

type ('a,'b) t = ('a*'b) list ref;;


let create f n = ref [];;

let add l key value =
	let (old_val,temp_list) = List.partition (fun (a,b) -> a = key) !l in
	l := (key,value)::temp_list;
	match old_val with
	| [] -> None
	| [(x,y)] -> Some y;;

let mem l key =
	let (old_val,temp_list) = List.partition (fun (a,b) -> a = key) !l in
	match old_val with
	| [] -> false
	| [(x,y)] -> true
	| _ -> failwith "mem";;
	
let find l key =
	let (old_val,temp_list) = List.partition (fun (a,b) -> a = key) !l in
	match old_val with
	| [] -> None
	| [(x,y)] -> Some y;;
			   
let delete l key =
	let (old_val,temp_list) = List.partition (fun (a,b) -> a = key) !l in
	l := temp_list;
	match old_val with
	| [] -> None
	| [(x,y)] -> Some y;;
	

let m = create (fun _ -> 0) 228;;
let s = "haha";;
let t = "xdxd";;
add m s t;;
match find m s with
| None -> print_string "None"
| Some y -> print_string y;;
Printf.printf "%b" (mem m s);;
delete m s;;
match find m s with
| None -> print_string "None"
| Some y -> print_string y;;
