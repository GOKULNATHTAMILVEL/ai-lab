fact(sunny).
fact(warm).
pleasant_day :- fact(sunny), fact(warm).
go_outside :- pleasant_day.
