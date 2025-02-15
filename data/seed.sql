BEGIN;



-- Réinitialiser les identifiants des tables
TRUNCATE TABLE "croyance" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "parole" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "type" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "hadith" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "biographie" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "invocation" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "douaa" RESTART IDENTITY CASCADE;

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

-- Insérer des paroles
INSERT INTO "parole" (
    "texte_arabe",
    "texte_francais",
    "phonetique",
    "explication",
    "type_id"
)
VALUES
    (
        'الله الله ربّي لا أُشركُ به شيئًا',
        'Allāh, Allāh est mon Seigneur, je ne lui associe rien.',
        'Allāhou Allāhou rabbī lā `ouchrikou bihī chay`â',
        'Évocation à faire matin et soir.',
        NULL
    ),
    (
        'لا إله إلا الله محمد رسول الله',
        'Il n’y a de dieu qu’Allah et Muhammad est son messager.',
        'Lā ilāha illā Allāhou Muhammadou rasoulou Allāh',
        'La base de la croyance islamique.',
        NULL
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

-- Insérer des biographies
INSERT INTO "biographie" (
    "nom",
    "status",
    "texte"
)
VALUES
    (
        'Muhammad',
        'prophète',
        'Le prophète Muhammad est le dernier messager.'
    );

-- Insérer des invocations
INSERT INTO "invocation" (
    "sujet",
    "texte_arabe",
    "texte_francais",
    "phonetique",
    "explication",
    "type_id",
    "commentaire"
)
VALUES
    (
        'Invocation pour la paix',
        'اللّهُمَّ اجعلنا من أهل الجنة',
        'Ô Allah, fais-nous partie des gens du paradis.',
        'Allahumma ajilna min ahlil jannah',
        'Invocation demandant la paix et la protection.',
        NULL,
        'Commentez cette invocation.'
    );

-- Insérer des douaa
INSERT INTO "douaa" (
    "sujet",
    "texte_arabe",
    "texte_francais",
    "phonetique",
    "explication",
    "type_id",
    "commentaire"
)
VALUES
    (
        'Douaa pour le malade',
        'اللّهُمَّ اشفِهِ وَعَافِهِ',
        'Ô Allah, guéris-le et accorde-lui la santé.',
        '',
        'Douaa pour la guérison des maladies.',
        NULL,
        'Commentez cette douaa.'
    );

COMMIT;
