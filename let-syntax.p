thf(1, axiom, $let(f := i, f = i)).
thf(2, axiom, $let(f := $true, f)).
thf(3, axiom, $let(! [X] : f(X) := X, f(i) = i)).
thf(4, axiom, $let(! [X: $i] : f(X) := X, f(i) = i)).
thf(5, axiom, $let(! [X,Y] : f(X,Y) := X = Y, f(i, i))).
thf(7, axiom, $let(! [X,Y:$i] : f(X,Y) := X = Y, f(i, i))).
thf(8, axiom, $let(! [X:$i,Y:$i] : f(X,Y) := X = Y, f(i, i))).

thf(9, axiom, $let([f := i, g := i], f = g)).
thf(10, axiom, $let([! [X] : f(X) := X, ! [X] : g(X) := X], f(i) = g(i))).
thf(11, axiom, $let([! [X:$i] : f(X) := X, ![X:$i] : g(X) := X], f(x) = g(i))).

%thf(12, axiom, $let_tf(! [X] : f(X) := X, $true)).
%thf(13, axiom, $let_ff(f(X) := X = X, $true)).
%thf(14, axiom, $let_tt(f(X) := X, f(i)) = i).
%thf(15, axiom, $let_ft(f(X) := X = X, i) = i).

% $let and $let_XX are all synonyms
%thf(16, axiom, $let_tt(f(X) := X, f(i) = i)).
