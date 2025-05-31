% Facts: Recommended diets based on diseases

diet(diabetes, "Low-carb foods, high-fiber vegetables, lean proteins, whole grains").
diet(hypertension, "Low-sodium foods, leafy greens, bananas, beets, garlic, whole grains").
diet(obesity, "High-fiber foods, lean proteins, fruits, vegetables, whole grains").
diet(anemia, "Iron-rich foods like spinach, red meat, legumes, nuts, fortified cereals").
diet(heart_disease, "Omega-3 fatty acids, nuts, whole grains, leafy vegetables, low-fat dairy").
diet(kidney_disease, "Low-protein diet, avoid potassium-rich foods, eat apples, cabbage, fish").
diet(osteoporosis, "Calcium-rich foods like dairy, leafy greens, almonds, and fortified foods").
diet(indigestion, "Light meals, yogurt, bananas, ginger, peppermint tea").
diet(thyroid, "Iodine-rich foods like fish, dairy, eggs, and nuts, avoid processed foods").

% Rule: Suggest diet based on disease
suggest_diet(Disease) :-
    diet(Disease, Diet),
    write("Recommended diet for "), write(Disease), write(": "), nl,
    write(Diet), nl.
