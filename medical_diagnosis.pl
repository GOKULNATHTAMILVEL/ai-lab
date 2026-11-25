symptom(john, fever).
symptom(john, cough).
symptom(amy, headache).
symptom(amy, fever).
diagnosis(X, flu) :- symptom(X, fever), symptom(X, cough).
diagnosis(X, migraine) :- symptom(X, headache), \+ symptom(X, cough).
diagnosis(X, unknown) :- \+ diagnosis(X, flu), \+ diagnosis(X, migraine).
