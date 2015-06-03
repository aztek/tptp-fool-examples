tff(1, axiom, $let(f := i, f = i)).
tff(2, axiom, $let(f := $true, f)).
tff(3, axiom, $let(f(X) := X, f(i) = i)).
tff(4, axiom, $let(f(X : $i) := X, f(i) = i)).
tff(5, axiom, $let(f(X, Y) := X = Y, f(i, i))).
tff(6, axiom, $let(f(X : $i, Y) := X = Y, f(i, i))).
tff(7, axiom, $let(f(X, Y : $i) := X = Y, f(i, i))).
tff(8, axiom, $let(f(X : $i, Y : $i) := X = Y, f(i, i))).

tff(9, axiom, $let(f := i; g := i, f = g)).
tff(10, axiom, $let(f(X) := X; g(X) := X, f(i) = g(i))).
tff(11, axiom, $let(f(X : $i) := X; g(X : $i) := X, f(x) = g(i))).
