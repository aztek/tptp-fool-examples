thf(z, type, z : $o > $o).
thf(x, type, x : ($i * $o * $i) > $o).
thf(p, type, p : $o > $o).
thf(q, type, q : $o > $o).
thf(p3, type, p3 : $o > $o).
thf(r, type, r : $o > $o).
thf(p1, type, p1 : $o > $o).
thf(p21, type, p21 : $o > $o).

thf(1, axiom, $true). % sanity test
thf(2, axiom, $true = $true).
thf(3, axiom, ![X:$o]: X).
thf(4, axiom, ![X:$o]: (X | $false)).
thf(5, axiom, ![X:$o]: ($false | X)).
thf(6, axiom, ![X:$o]: ($false | (X = $true))).
thf(7, axiom, ![X:$o]: (X = $true)).

thf(8, axiom, ![X:$o]: ($true = X)).
thf(9, axiom, z($true)).
thf(10, axiom, x(c1, $true, c2)).
thf(11, axiom, p(![X]: $true)).
thf(12, axiom, q($true | $false)).
thf(13, axiom, ![X:$o]:((X | $true) = $true)).
thf(14, axiom, ![X:$o]:((X = $true) = $true)).
thf(15, axiom, ![X:$o]:(X = X)).

thf(16, axiom, ![X]: (X = c3)). % sanity test
thf(17, axiom, ![X]: (c4 = X)). % sanity test
thf(18, axiom, p0(a1, a2, a3(b1, b2), a4)). % sanity test

thf(19, axiom, ![X]: (r(X = c5))).
thf(20, axiom, p1(a = b)).
thf(21, axiom, p3(f1(d1, d2, d3, d4) = b20)).
thf(22, axiom, ![X:$o]: p21(X)).

thf(ww, type, (ww:$o>$o)).
thf(c, type, (c: $o)).

thf(ee, type, ee : ($o * $o) > $o).
thf(qq, type, qq : $o > $o).

thf(large, axiom, ![X:$o]: (qq(![Z:$o]: ee(Z & ((X = ww(Z)) | c), $false)) | X | (X = (?[Y: $o]: (Y = ww(Y)))))).

thf(large2, axiom, ![X:$o, Y]: (z(X | (Y = constant)))).
