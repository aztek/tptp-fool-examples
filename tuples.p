thf(a, type, a: $tType).
thf(b, type, b: $tType).
thf(c, type, c: $tType).

thf(t, type, t: [a, $o, b]).

% $tuple() should not be allowed
% $tuple(a) should not be allowed

thf(f, type, f: [a, b] > [a, b]).

thf(1, axiom, ![T:[a, b]]: (T = f(T))).

thf(first, axiom, ![T:[a, b]]: ($let([x, y] := T, x = x))).

thf(x,type,x:$int).
thf(y,type,y:$int).

thf(makeXgreatest,conjecture,
  $let([x, y] :=
         $ite($greater(x, y),
              $let([x, y, t] := [x, y, x],
              $let([x, y, t] := [y, y, t],
              $let([x, y, t] := [x, t, t],
                   [x, y]))),
              [x, y]),
       $greatereq(x, y))
).
