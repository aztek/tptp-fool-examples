tff(a, type, a: $tType).
tff(b, type, b: $tType).
tff(c, type, c: $tType).

tff(t, type, t: $tuple(a, $o, b)).

# $tuple() should not be allowed
# $tuple(a) should not be allowed

tff(f, type, f: $tuple(a, b) > $tuple(a, b)).

tff(1, axiom, ![T:$tuple(a, b)]: (T = f(T))).

tff(first, axiom, ![T:$tuple(a, b)]: ($let([x, y] := T, x = x))).

tff(x,type,x:$int).
tff(y,type,y:$int).

tff(makeXgreatest,conjecture,
  $let([x, y] :=
         $ite($greater(x, y),
              $let([x, y, t] := [x, y, x],
              $let([x, y, t] := [y, y, t],
              $let([x, y, t] := [x, t, t],
                   [x, y]))),
              [x, y]),
       $greatereq(x, y))
).
