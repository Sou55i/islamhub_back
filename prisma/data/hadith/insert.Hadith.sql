BEGIN;

TRUNCATE TABLE "hadith" RESTART IDENTITY CASCADE;

-- Insérer des hadiths
INSERT INTO "hadith" (
    "sujet",
    "raporteur",
    "narrateur",
    "statut",
    "texte_arabe",
    "texte_francais",
    "phonetique",
    "explication",
    "type_id"
)
VALUES
    (
        'Hadith sur la prière',
        'Al-Bukhari',
        'Abu Huraira',
        'Sahih',
        'إِنَّ أَمَامَكُمْ رَجُلٌ يَصْلِي فِي رَسُولِ اللّهِ',
        'Il y a devant vous un homme qui prie dans le message de Allah.',
        'Inna amamukum rajulun yusalli fi Rasulillahi',
        'Un hadith concernant les prières.',
        1
    );