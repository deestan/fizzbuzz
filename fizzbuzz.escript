#!/usr/bin/env escript
%% -*- erlang -*-
main(_) ->
    register(main, self()),
    register(printer, spawn(fun() -> tick(1) end)),
    spawn(fun() -> fizzer(1) end),
    spawn(fun() -> buzzer(1) end),
    receive bye -> ok end.

tick(101) ->
    main ! bye;
tick(N) ->
    receive fazz -> tock(N, 1);
            fizz ->
                io:format("FIZZ"),
                tock(N, 0)
    end.

tock(N, W) ->
    receive bazz -> thunk(N, W + 1);
            buzz ->
                io:format("BUZZ"),
                thunk(N, 0)
    end.

thunk(N, 2) ->
    io:format("~w", [N]),
    thunk(N, 0);
thunk(N, _) ->
    io:format("~n"),
    tick(N + 1).

fizzer(3) -> printer ! fizz, fizzer(1);
fizzer(N) -> printer ! fazz, fizzer(N + 1).
buzzer(5) -> printer ! buzz, buzzer(1);
buzzer(N) -> printer ! bazz, buzzer(N + 1).
