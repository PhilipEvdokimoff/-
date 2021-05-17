let m = 8;;
let n = 0;;
let matr = [|[|0;0;0;1;0;0;1;0|];
			 [|0;1;0;0;0;1;0;0|]
			 [|0;0;1;0;0;0;1;0|]
			 [|0;1;1;0;0;1;0;0|]|];;

let rec func a b matr m =
	if a = True || a+1 = True then n = 1 + func (a+2) (b+1) matr m
	else n = max (func (a+2) (b+1) matr m (1 + func (x) (b+1) matr m))
