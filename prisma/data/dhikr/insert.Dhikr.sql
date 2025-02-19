BEGIN;

-- Supprimer toutes les données de la table "invocation" et réinitialiser les séquences
TRUNCATE TABLE "dhikr" RESTART IDENTITY CASCADE;

-- Insérer des invocations
INSERT INTO "dhikr" (
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
        'Invocation quand on se réveille au milieu de la nuit',
        'أَعُوذُ بكلماتِ اللهِ التآماتِ من غضبِهِ وعقابِهِ وشَرِّ عبادِهِ ومِنْ هَمَزَاتِ الشَّيَاطِينِ وأَنْ يَحضُرُونَ',
        'Nous enseignons cette invocation à ceux qui avait atteint le discernement parmi nos enfants. Et ceux qui n’avait pas encore atteint le discernement, on l’écrivait et on l’accrochait à leurs cous',
        '''a`ôudhou bi kalimâti l-Lâhi t-tâmmâti min ghaḍabihi wa `iqâbih wa charri `ibâdih wa min hamazâti ch-chayâṭîn wa ''an yaḥḍourôun',
        'Invocation demandant la paix et la protection.',
        4,
        'At-tirmîdhiyy a dit: « c’est un ḥadīth qui est ḥaçan »'
    );

COMMIT;