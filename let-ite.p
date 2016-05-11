thf( 1, axiom, $ite($let(c := $false, c), $true, $false)).
thf( 2, axiom, $ite($true, $let(c := $false, c), $false)).
thf( 3, axiom, $ite($true, $false, $let(c := $false, c))).

thf( 4, axiom, $ite($let(c := i, $true), $true, $false)).
thf( 5, axiom, $ite($true, $let(c := i, $true), $false)).
thf( 6, axiom, $ite($true, $false, $let(c := i, $true))).

thf( 7, axiom, $ite($let(f(X) := X, f(i) = f(i)), i, i) = i).
thf( 8, axiom, $ite($false, $let(f(X) := X, f(i)), i) = i).
thf( 9, axiom, $ite($false, i, $let(f(X) := X, f(i))) = i).

thf(10, axiom, $ite($let(c := $false, c), i, i) = i).
thf(11, axiom, $ite($false, $let(c := $false, i), i) = i).
thf(12, axiom, $ite($false, i, $let(x := $false, i)) = i).

thf(11, axiom, $let(f(X, Y) := X = Y, $ite(![X, Y] : f(X, Y), $true, $false))).
thf(12, axiom, $let(f(X) := X, $ite(f(i) = i, $true, $false))).
thf(13, axiom, $let(f(X : $o) := $ite(X, i, i) = i, f(![X]: X = X))).
