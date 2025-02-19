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
        'D''après notre dame `A’ichah',
        'Sahih',
        'عن عائشة قالت : سألت رسول الله صلى الله عليه وسلم عن الالتفات في الصلاة فقال : « هو اختلاس (الأخذ بسرعة على غفلة) يختلسه الشيطان من صلاة العبدِ',
        'D''après notre dame `A’ichah, que Dieu l’agrée, elle a dit: J’ai demandé au Messager de Dieu, que Dieu l’élève davantage en degrés, sur le fait de jeter des regards [à droite et à gauche] durant la prière, il a dit ce qui signifie: « C’est une prise [rapide, faite à la personne qui est insouciante à ce moment-là] par le diable, qu’il prend durant la prière de la personne »',
        '',
        'Un hadith concernant les prières.',
        1
    );

COMMIT;