diet(diabetes, 'Avoid excess sugar and eat vegetables').
diet(hypertension, 'Reduce salt and eat fruits').
diet(obesity, 'Eat balanced food and exercise').
diet(anemia, 'Eat iron-rich foods').
suggest_diet(Disease) :- diet(Disease, Food), write('Diet suggestion: '), write(Food).
