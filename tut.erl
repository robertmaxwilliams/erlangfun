-module tut.
-export([double/1]).
-export([fac/1]).
-export([mult/2]).

fac(1) ->
    1;
fac(N) ->
    N * fac(N-1).

double(X) ->
    2 * X.

mult(10, Y) ->
    Y;
mult(X, Y) ->
    X * Y.
