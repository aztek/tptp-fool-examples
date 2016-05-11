thf(a, type, a : $tType).
thf(b, type, b : $tType).

thf(0, axiom, $let([! [X1:a,X2:b] : q1(X1,X2) := c1, ! [Y1:a,Y2:b] : q2(Y1,Y2) := c2], $true)). 

thf(t, type, t : $tType).
thf(h, type, h : t > t).
thf(c, type, c : t).

% no type error -- occurrences of h inside the body of f refer to the global h,
% whereas occurrence of h inside the body of $let refers to the defined h
thf(1, axiom, $let([! [X] : h(X) := X, ! [X] : f(X : t) := h(h(X))], ![X : t]: (f(X) = f(f(X))))).

% error -- duplicate variables
%thf(2, axiom, $let(f(X, X : t) := $true, f(i, c))).

% error -- duplicating function definitions
%thf(3, axiom, $let([f(X) := X, f(Y) := Y], f(i) = f(i))).

% error -- predicate and function symbols share scope
%thf(4, axiom, $let([f(X) := X, f(X) := X = X], f(f(i)))).

% no error -- functions are allowed to be overriden by arity
thf(5, axiom, $let([! [X] : f(X) := X, ! [X,Y] : f(X, Y) := Y], f(i, f(i)) = i)).

% innermost definitions shadow outermost one
thf(6, axiom, $let([! [X] : f(X) := X, ! [X] : g(X) := c], $let(! [X:t] : f(X) := g(f(i)), f(c) = c))).
thf(7, axiom, $let(! [X] : f(X) := X, $let(! [X] : f(X) := f(X) = X, f(i)))).

% bindings are parallel
thf(8, axiom, $let([! [X] : f(X) := X, ! [X:t] : h(X) := i], 
              $let([! [X] : f(X : t) := X, ! [X] : g(X) := f(f(X))],
                   g(i) = h(c)))).

% scoping of variables is well-behaved
thf(9, axiom, ![X]: $let(! [X:t] : f(X,Y) := X = c, f(c, X))).
thf(10, axiom, $let(! [X:t,Y] : f(X, Y) := X = c, ![X]: f(c, X))).

% scoping for $let inside the body of the function is well-behaved 
thf(11, axiom, $let(! [X] : f(X) := $let(! [X:t] : f(X) := X, f(c)), f(i) = c)).

% symbols, bound inside $let do not clash with symnonymous symbols of inferred sorts
thf(12, axiom, $let(p1 := $true, p1)).
thf(13, axiom, p1).

thf(14, axiom, $let(c1 := i, c1 = i)).
thf(15, axiom, c1 = i).

thf(16, axiom, $let(p2 := $true, p2)).
thf(17, axiom, p2).
thf(18, axiom, $let(p2 := $false, p2)).

thf(19, axiom, $let(c2 := i, c2 = i)).
thf(20, axiom, c2 = i).
thf(21, axiom, $let(c2 := i, c2 = i)).
