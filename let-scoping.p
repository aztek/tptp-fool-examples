tff(a, type, a : $tType).
tff(b, type, b : $tType).

tff(0, axiom, $let([q1(X1 : a, X2 : b) := c1, q2(Y1 : a, Y2 : b) := c2], $true)). 

tff(t, type, t : $tType).
tff(h, type, h : t > t).
tff(c, type, c : t).

% no type error -- occurrences of h inside the body of f refer to the global h,
% whereas occurrence of h inside the body of $let refers to the defined h
tff(1, axiom, $let([h(X) := X, f(X : t) := h(h(X))], ![X : t]: (f(X) = f(f(X))))).

% error -- duplicate variables
%tff(2, axiom, $let(f(X, X : t) := $true, f(i, c))).

% error -- duplicating function definitions
%tff(3, axiom, $let([f(X) := X, f(Y) := Y], f(i) = f(i))).

% error -- predicate and function symbols share scope
%tff(4, axiom, $let([f(X) := X, f(X) := X = X], f(f(i)))).

% no error -- functions are allowed to be overriden by arity
tff(5, axiom, $let([f(X) := X, f(X, Y) := Y], f(i, f(i)) = i)).

% innermost definitions shadow outermost one
tff(6, axiom, $let([f(X) := X, g(X) := c], $let(f(X : t) := g(f(i)), f(c) = c))).
tff(7, axiom, $let(f(X) := X, $let(f(X) := f(X) = X, f(i)))).

% bindings are parallel
tff(8, axiom, $let([f(X) := X, h(X : t) := i], 
              $let([f(X : t) := X, g(X) := f(f(X))],
                   g(i) = h(c)))).

% scoping of variables is well-behaved
tff(9, axiom, ![X]: $let(f(X : t, Y) := X = c, f(c, X))).
tff(10, axiom, $let(f(X : t, Y) := X = c, ![X]: f(c, X))).

% scoping for $let inside the body of the function is well-behaved 
tff(11, axiom, $let(f(X) := $let(f(X : t) := X, f(c)), f(i) = c)).

% symbols, bound inside $let do not clash with symnonymous symbols of inferred sorts
tff(12, axiom, $let(p1 := $true, p1)).
tff(13, axiom, p1).

tff(14, axiom, $let(c1 := i, c1 = i)).
tff(15, axiom, c1 = i).

tff(16, axiom, $let(p2 := $true, p2)).
tff(17, axiom, p2).
tff(18, axiom, $let(p2 := $false, p2)).

tff(19, axiom, $let(c2 := i, c2 = i)).
tff(20, axiom, c2 = i).
tff(21, axiom, $let(c2 := i, c2 = i)).
