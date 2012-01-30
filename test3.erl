-module(test3).
-export([new/2,getsize/1]).
-record(person,{name,age}).


new(Name,Age) ->
   #person{name=Name,age=Age}.
   

getsize(Li) ->
  tuple_size(Li).