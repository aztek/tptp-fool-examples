tff( 1, axiom, $ite($let(c := $false, c), $true, $false)).
tff( 2, axiom, $ite($true, $let(c := $false, c), $false)).
tff( 3, axiom, $ite($true, $false, $let(c := $false, c))).

tff( 4, axiom, $ite($let(c := i, $true), $true, $false)).
tff( 5, axiom, $ite($true, $let(c := i, $true), $false)).
tff( 6, axiom, $ite($true, $false, $let(c := i, $true))).

tff( 7, axiom, $ite($let(f(X) := X, f(i) = f(i)), i, i) = i).
tff( 8, axiom, $ite($false, $let(f(X) := X, f(i)), i) = i).
tff( 9, axiom, $ite($false, i, $let(f(X) := X, f(i))) = i).

tff(10, axiom, $ite($let(c := $false, c), i, i) = i).
tff(11, axiom, $ite($false, $let(c := $false, i), i) = i).
tff(12, axiom, $ite($false, i, $let(x := $false, i)) = i).

tff(11, axiom, $let(f(X, Y) := X = Y, $ite(![X, Y] : f(X, Y), $true, $false))).
tff(12, axiom, $let(f(X) := X, $ite(f(i) = i, $true, $false))).
tff(13, axiom, $let(f(X : $o) := $ite(X, i, i) = i, f(![X]: X = X))).
