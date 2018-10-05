-module(math1).
-export([factorial/1]).
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).


simple_process()->
    receive
        terminate ->
            ok;
        {area,R} ->
            Area = math:pi()*R*R,
            io:format("The area of a circle of radious: ~p is: ~p~n",[R,Area]),
            simple_process();
        identify ->
            io:format("My Process Id (PId) is: ~p, and I am online~n",[self()]),
            simple_process()
    end.
