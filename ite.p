thf(p, type, p : $o > $o).
thf(q, type, q : $i > $i).
thf(r, type, r : ($i * $i) > $i).

thf(a, type, a : $o).
thf(b, type, b : $o).
thf(c, type, c : $o).

thf(1, axiom, p($ite(c, a, b) = $false)).
thf(2, axiom, p($ite(c, a, b) | $false)).
thf(3, axiom, p($ite(c, a, b) = $false)).
thf(4, axiom, p($ite(c, a, b) | $false)).

thf(5, axiom, $ite(c, a, b)).
thf(6, axiom, $ite(c, a, b)).
thf(7, axiom, $ite(c, a, b)).

thf(8, axiom, p($ite(c, a, b) = $false)).
thf(9, axiom, p($ite(c, a, b) | $false)).

thf(10, axiom, p($ite(c, a, b))).
thf(11, axiom, p($ite(c, a, b))).
thf(12, axiom, p($ite(c, a, b))).

thf(13, axiom, $ite($ite(c, a, b), a, b)).
thf(14, axiom, $ite(c, $ite(c, a, b), b)).
thf(15, axiom, $ite(c, a, $ite(c, a, b))).

thf(16, axiom, i = $ite(c, i, i)).
thf(17, axiom, $ite(c, i, i) = i).
thf(18, axiom, q($ite(c, i, i)) = i).
thf(19, axiom, p($ite(c, i, i) = i)).
thf(20, axiom, p(p(p($ite(c, i, i) = i)))).
thf(21, axiom, r($ite(c, i, i), $ite(c, i, i)) = i).
thf(22, axiom, $ite(c, q($ite(c, i, i)), i) = i).
