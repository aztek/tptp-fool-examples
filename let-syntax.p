tff(1, axiom, $let(f := i, f = i)).
tff(2, axiom, $let(f := $true, f)).
tff(3, axiom, $let(f(X) := X, f(i) = i)).
tff(4, axiom, $let(f(X : $i) := X, f(i) = i)).
tff(5, axiom, $let(f(X, Y) := X = Y, f(i, i))).
tff(6, axiom, $let(f(X : $i, Y) := X = Y, f(i, i))).
tff(7, axiom, $let(f(X, Y : $i) := X = Y, f(i, i))).
tff(8, axiom, $let(f(X : $i, Y : $i) := X = Y, f(i, i))).

tff(9, axiom, $let([f := i, g := i], f = g)).
tff(10, axiom, $let([f(X) := X, g(X) := X], f(i) = g(i))).
tff(11, axiom, $let([f(X : $i) := X, g(X : $i) := X], f(x) = g(i))).

tff(12, axiom, $let_tf(f(X) := X, $true)).
tff(13, axiom, $let_ff(f(X) := X = X, $true)).
tff(14, axiom, $let_tt(f(X) := X, f(i)) = i).
tff(15, axiom, $let_ft(f(X) := X = X, i) = i).

% $let and $let_XX are all synonyms
tff(16, axiom, $let_tt(f(X) := X, f(i) = i)).
