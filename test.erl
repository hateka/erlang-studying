-module(test).
-export([fac/1,mult/2,format_temp/1,iotest/1]).

fac(1) -> 
   1;

fac(N) ->
  N * fac(N-1).

mult(X,Y) ->
 fac(X * Y).

format_temp([]) ->
 ok;

format_temp([Head | Tail]) ->
 iotest(Head),
 format_temp(Tail).

iotest(W) ->
  io:format("hello ~w~n",[W]).

