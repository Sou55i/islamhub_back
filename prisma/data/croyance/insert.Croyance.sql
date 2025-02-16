BEGIN;

TRUNCATE TABLE "croyance" RESTART IDENTITY CASCADE;

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
