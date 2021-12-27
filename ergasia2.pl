proceed_list(List,List).
proceed_list([_|LongListRest],List):-proceed_list(LongListRest,List).