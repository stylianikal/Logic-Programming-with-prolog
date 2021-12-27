pc(component(power_supply),substandard(cable),[thin_tube,optical_fiber]).
pc(component(power_supply),substandard(fan),[led]).
pc(component(power_supply),substandard(adapter),[wire,core]).

component(pc,power_supply).
component_material(power_supply,metal).
substandard(power_supply,cable).
substandard(power_supply,fan).
substandard(power_supply,adapter).
substandard_components(cable,[thin_tube,optical_fiber]).
substandard_components(fan,[led]).
substandard_components(adapter,[wire,core]).

pc(component(screen),substandard(crystal_liquid),[sealing_system,glass]).
pc(component(screen),substandard(tube),[electron_beam,graphics_circuit]).

component(pc,screen).
component_material(screen,plastic).
substandard(screen,crystal_liquid).
substandard(screen,tube).
substandard_components(crystal_liquid,[sealing_system,glass]).
substandard_components(tube,[electron_beam,graphics_circuit]).

pc(component(motherboard),substandard(capacitors),[boards]).
pc(component(motherboard),substandard(battery),[electrodes,microchip]).

component(pc,motherboard).
component_material(motherboard,plastic).
substandard(motherboard,capacitors).
substandard(motherboard,battery).
substandard_components(capacitors,[boards]).
substandard_components(battery,[electrodes,microchip]).

comp(Y,X):-component(Y,X).
subst(Y,X):-substandard(Y,X).

material(X,Y):-component_material(X,Y).

allcomponents(X):-component(X,Z),nl,write(Z),nl,inner_lvl(Z).
inner_lvl([H|T]):-component(H,Y),nl,write(Y),nl,inner_lvl(T).
inner_lvl([H|T]):-component(H,Y),inner2_lvl(Y).
inner2_lvl([E|F]):-component(E,G),nl,write(G),nl,inner2_lvl(F).
