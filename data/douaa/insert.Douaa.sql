BEGIN;

TRUNCATE TABLE "douaa" RESTART IDENTITY CASCADE;




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