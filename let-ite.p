thf( 1, axiom, $ite($let(c : $o, c := $false, c), $true, $false)).
thf( 2, axiom, $ite($true, $let(c : $o, c := $false, c), $false)).
thf( 3, axiom, $ite($true, $false, $let(c : $o, c := $false, c))).

thf( 4, axiom, $ite($let(c : $i, c := i, $true), $true, $false)).
thf( 5, axiom, $ite($true, $let(c : $i, c := i, $true), $false)).
thf( 6, axiom, $ite($true, $false, $let(c : $i, c := i, $true))).

thf( 7, axiom, $ite($let(f : $i > $i, f(X) := X, f(i) = f(i)), i, i) = i).
thf( 8, axiom, $ite($false, $let(f : $i > $i, f(X) := X, f(i)), i) = i).
thf( 9, axiom, $ite($false, i, $let(f : $i > $i, f(X) := X, f(i))) = i).

thf(10, axiom, $ite($let(c : $o, c := $false, c), i, i) = i).
thf(11, axiom, $ite($false, $let(c : $o, c := $false, i), i) = i).
thf(12, axiom, $ite($false, i, $let(x : $o, x := $false, i)) = i).

thf(11, axiom, $let(f : ($i * $i) > $o, f(X, Y) := X = Y, $ite(![X, Y] : f(X, Y), $true, $false))).
thf(12, axiom, $let(f : $i > $i, f(X) := X, $ite(f(i) = i, $true, $false))).
thf(13, axiom, $let(f : $o > $o, f(X) := $ite(X, i, i) = i, f(![X]: X = X))).
