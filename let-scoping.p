tff(a, type, a : $tType).
tff(b, type, b : $tType).

tff(0, axiom, $let(q1(X1 : a, X2 : b) := c1; q2(Y1 : a, Y2 : b) := c2, $true)). 

tff(t, type, t : $tType).
tff(h, type, h : t > t).
tff(c, type, c : t).

% no type error -- occurrences of h inside the body of f refer to the global h,
% whereas occurrence of h inside the body of $let refers to the defined h
tff(1, axiom, $let(h(X) := X; f(X : t) := h(h(X)), ![X : t]: (f(X) = f(f(X))))).

%tff(2, axiom, $let(f(X, X : t) := $true, f(i, c))).

% error -- duplicating function definitions
%tff(2, axiom, $let(f(X) := X; f(Y) := Y, f(i) = f(i))).

% error -- predicate and function symbols share scope
%tff(3, axiom, $let(f(X) := X; f(X) := X = X, f(f(i)))).

% no error -- functions are allowed to be overriden by arity
tff(4, axiom, $let(f(X) := X; f(X, Y) := Y, f(i, f(i)) = i)).

% innermost definitions shadow outermost one
tff(5, axiom, $let(f(X) := X; g(X) := c, $let(f(X : t) := g(f(i)), f(c) = c))).
tff(6, axiom, $let(f(X) := X, $let(f(X) := f(X) = X, f(i)))).

% bindings are parallel
tff(7, axiom, $let(f(X) := X; h(X : t) := i, 
              $let(f(X : t) := X; g(X) := f(f(X)),
                   g(i) = h(c)))).
