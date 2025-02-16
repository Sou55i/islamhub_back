BEGIN;



-- Réinitialiser les identifiants des tables


TRUNCATE TABLE "type" RESTART IDENTITY CASCADE;





-- Insérer des types
INSERT INTO "type" ("nom")
VALUES
    ('hadith'),
    ('coran'),
    ('douaa'),
    ('dhikr'),
    ('akida');

-- Insérer des croyances
INSERT INTO "croyance" (
    "nom",
    "arabe",
    "francais",
    "type_id",
    "sujet",
    "phonetique",
    "explication",
    "audio"
)
VALUES
    (
        'Croyance 1',
        'اللهُ مَوْجُودٌ بِلاَ كَيْفٍ وَلاَ مَكَان',
        'Dieu existe sans endroit et sans comment.',
        5,
        'Sujet sur l’unicité',
        'Allahu Mawjoudoun Bila Kayfin Wa La Makan',
        'Dieu est unique et transcende le temps et l’espace.',
        'audio_1.mp3'
    ),
    (
        'Croyance 2',
        'توحيد الله',
        'Unicité de Dieu',
        5,
        'Sujet sur le tawhid',
        'Tawhidu Allahi',
        'Explication approfondie sur le tawhid (unicité).',
        'audio_2.mp3'
    );


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



COMMIT;
