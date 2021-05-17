(* Индекс де-Брауна *)

type deb = App of deb * deb | Abs of string * deb | Index of deb | Var of string

(*  App (Index 3, Abs (“a”, App (Index 4, Index 1)))  => [3;3]
	App (Index 2, Abs (“x”, App (Abs (“y”, Index 3), Index 2))) => [2;1;1] *)2
