% Facts: Symptoms associated with diseases
symptom(cold, fever).
symptom(cold, cough).
symptom(cold, sneezing).
symptom(cold, sore_throat).

symptom(flu, fever).
symptom(flu, chills).
symptom(flu, body_ache).
symptom(flu, cough).
symptom(flu, fatigue).

symptom(covid, fever).
symptom(covid, dry_cough).
symptom(covid, loss_of_taste_smell).
symptom(covid, difficulty_breathing).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).
symptom(malaria, headache).

symptom(diabetes, excessive_thirst).
symptom(diabetes, frequent_urination).
symptom(diabetes, fatigue).
symptom(diabetes, blurred_vision).

% Rule to diagnose based on given symptoms
diagnose(Disease) :-
    symptom(Disease, Symptom),
    write('Do you have '), write(Symptom), write('? (yes/no): '),
    read(Response),
    Response == yes,
    fail.

diagnose(Disease) :-
    write('Based on the symptoms, you may have '), write(Disease), nl.

% Start diagnosis
start_diagnosis :-
    write('Medical Diagnosis System'), nl,
    write('Answer "yes" or "no" to the following symptoms:'), nl,
    diagnose(Disease), !.
start_diagnosis :-
    write('No matching disease found. Consider consulting a doctor.'), nl.

% Query Example:
% ?- start_diagnosis.
