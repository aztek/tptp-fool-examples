tff(z, type, z : $o > $o).
tff(x, type, x : ($i * $o * $i) > $o).
tff(p, type, p : $o > $o).
tff(q, type, q : $o > $o).
tff(p3, type, p3 : $o > $o).
tff(r, type, r : $o > $o).
tff(p1, type, p1 : $o > $o).
tff(p21, type, p21 : $o > $o).

tff(1, axiom, $true). % sanity test
tff(2, axiom, $true = $true).
tff(3, axiom, ![X:$o]: X).
tff(4, axiom, ![X:$o]: (X | $false)).
tff(5, axiom, ![X:$o]: ($false | X)).
tff(6, axiom, ![X:$o]: ($false | (X = $true))).
tff(7, axiom, ![X:$o]: (X = $true)).

tff(8, axiom, ![X:$o]: ($true = X)).
tff(9, axiom, z($true)).
tff(10, axiom, x(c1, $true, c2)).
tff(11, axiom, p(![X]: $true)).
tff(12, axiom, q($true | $false)).
tff(13, axiom, ![X:$o]:((X | $true) = $true)).
tff(14, axiom, ![X:$o]:((X = $true) = $true)).
tff(15, axiom, ![X:$o]:(X = X)).

tff(16, axiom, ![X]: (X = c3)). % sanity test
tff(17, axiom, ![X]: (c4 = X)). % sanity test
tff(18, axiom, p0(a1, a2, a3(b1, b2), a4)). % sanity test

tff(19, axiom, ![X]: (r(X = c5))).
tff(20, axiom, p1(a = b)).
tff(21, axiom, p3(f1(d1, d2, d3, d4) = b20)).
tff(22, axiom, ![X:$o]: p21(X)).

tff(ww, type, (ww:$o>$o)).
tff(c, type, (c: $o)).

tff(ee, type, ee : ($o * $o) > $o).
tff(qq, type, qq : $o > $o).

tff(large, axiom, ![X:$o]: (qq(![Z:$o]: ee(Z & (X = ww(Z) | c), $false)) | X | X = (?[Y: $o]: (Y = ww(Y))))).

tff(large2, axiom, ![X:$o, Y]: (z(X | (Y = constant)))).
