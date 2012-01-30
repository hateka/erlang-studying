-module(test4).

-export([start/0]).
-export([init/1]).
-export([add/1,sub/1]).

start() ->
  spawn(test4,init,[1]),
  spawn(test4,init,[10]).

init(Num) when 1 =:= Num ->
  add(Num);

init(Num) when 10 =:= Num ->
  sub(Num).
   
add(Num) ->
   io:format("~p~n",[Num+1]).
   %add(Num+1).

sub(Num) ->
   io:format("~p~n",[Num-1]).
   %gen(Num-1).
