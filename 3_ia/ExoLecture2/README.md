# Lecture 2

J'ai utilisé NotebookLM pour faire un résumé du document. J'ai également demandé à **ChatGPT**. Je
lui est donc fourni tout le contenu du document et demandé un résumé de celui-ci.

## Prompt et réponses de Notebook

Ce document présente un nouveau benchmark de test appelé "Massive Multitask Language Understanding" (MMLU), conçu pour évaluer l'étendue et la profondeur des connaissances académiques et professionnelles des modèles de langage.
Voici les points principaux du document :
Objectif et Structure : Les auteurs proposent un test couvrant 57 tâches dans des domaines variés tels que les mathématiques, l'histoire, le droit, l'éthique et la médecine. Ce test vise à combler les lacunes des benchmarks précédents (comme GLUE) sur lesquels les modèles atteignent déjà des performances humaines, mais sans capturer une compréhension réelle du monde.
Méthodologie d'évaluation : Contrairement aux méthodes classiques de réglage fin (fine-tuning), les modèles sont évalués dans des contextes "zero-shot" (sans exemple) et "few-shot" (avec quelques exemples). Cela permet de mesurer les connaissances acquises directement pendant le pré-entraînement sur de vastes corpus de textes.
Performances des modèles :
La plupart des modèles récents ont des performances proches du hasard (environ 25 %).
Le modèle GPT-3 (X-Large) se distingue avec une précision moyenne de 43,9 %, bien que cela reste très inférieur au niveau d'expertise humaine estimé à environ 89,8 %.
Le modèle UnifiedQA, bien que plus petit en paramètres que GPT-3, obtient de meilleurs résultats (48,9 %) grâce à un entraînement spécifique sur d'autres jeux de questions-réponses.
Constats et Lacunes :
Performance déséquilibrée : Les modèles réussissent mieux dans les matières verbales que dans les matières nécessitant des calculs ou des procédures, comme les mathématiques de niveau universitaire ou la physique.
Sujets sensibles : Les résultats sont particulièrement faibles sur des sujets socialement importants tels que la moralité et le droit.
Défaut de calibration : Les modèles sont souvent "mal calibrés", ce qui signifie que leur niveau de confiance dans une réponse ne correspond pas à leur précision réelle ; ils ne savent pas quand ils ont tort.
En résumé, ce benchmark sert de nouvel outil pour identifier les points aveugles des modèles d'intelligence artificielle et montre qu'ils ont encore un long chemin à parcourir avant d'atteindre une compréhension experte du monde.
Souhaitez-vous que je crée un rapport détaillé sur les différences de performance entre les disciplines STEM et les sciences humaines pour les modèles testés ?

## Prompt réponses de ChatGPT

Voici un résumé de l’article “Measuring Massive Multitask Language Understanding” (ICLR 2021) de Dan Hendrycks et ses co-auteurs.

🎯 Objectif de l’article
Les auteurs proposent un nouveau benchmark appelé MMLU (Massive Multitask Language Understanding) pour évaluer la capacité réelle des modèles de langage à comprendre et appliquer des connaissances issues de nombreux domaines.
Ils partent du constat que les benchmarks existants comme GLUE ou SuperGLUE ont rapidement été “résolus” par les modèles récents, sans pour autant refléter une compréhension globale du langage.

🧠 Qu’est-ce que MMLU ?
Le test comprend :


57 matières différentes


Issues des STEM, des sciences sociales, des humanités et de domaines professionnels


Des niveaux allant de l’école primaire au niveau professionnel (ex : médecine, droit)


Exemples de disciplines :


Mathématiques (élémentaire → universitaire)


Physique


Histoire


Économie


Philosophie


Droit professionnel


Médecine professionnelle


Morale et éthique


Le test contient 15 908 questions à choix multiples.

🔬 Méthodologie
Les modèles sont évalués en :


Zero-shot (sans exemples)


Few-shot (avec quelques exemples fournis dans le prompt)


Les auteurs testent notamment :


GPT-3 (différentes tailles)


UnifiedQA



📊 Résultats principaux
1️⃣ Les petits modèles ≈ hasard


Les versions petites et moyennes de GPT-3 obtiennent environ 25 %, soit le niveau du hasard (4 choix → 25 %).


La version 175 milliards de paramètres atteint 43,9 %.


➡️ Progrès significatif, mais encore loin du niveau expert (~90 %).

2️⃣ Performances très déséquilibrées
Les modèles :


Réussissent mieux dans certains domaines


Échouent presque totalement dans d’autres


Ils sont particulièrement faibles en :


Mathématiques avec calculs


Physique


Droit professionnel


Morale et éthique


⚠️ Problème important : faibles performances sur des sujets socialement sensibles (droit, morale).

3️⃣ Problème de raisonnement procédural
Les modèles connaissent parfois les règles (ex : ordre des opérations en mathématiques) mais ne savent pas toujours les appliquer correctement.
Ils semblent mieux maîtriser :


Les connaissances déclaratives (faits)
Que :


Les connaissances procédurales (résolution étape par étape)



4️⃣ Mauvaise calibration
Les modèles :


Sont souvent trop confiants


Leur niveau de confiance peut être décalé de 24 % par rapport à leur vraie précision


Cela signifie qu’ils ne savent pas bien estimer quand ils ont tort.

🧩 Conclusion
Les auteurs montrent que :


Les benchmarks classiques surestiment les capacités des modèles


MMLU révèle de nombreuses lacunes importantes


Les modèles actuels restent loin du niveau humain expert


Les progrès récents sont réels mais encore très incomplets


Le test MMLU devient ainsi un nouvel indicateur plus exigeant de compréhension générale.

Si tu veux, je peux aussi te faire :


✅ un résumé encore plus court (5–6 lignes)


🎓 un résumé académique formel


📚 une fiche de révision structurée


🧠 une explication simplifiée niveau lycée





## Questions
Pour m'aider avec les questions je les posées à NotebookLM et Chatgpt, puis j'ai pu les retrouvées dans le document.

### 1. Quelle est la compétence que le benchmark MMLU mesure dans les LLMs ?

**NotebookLM :**

Le benchmark MMLU (Massive Multitask Language Understanding) est conçu pour mesurer la précision multitâche des modèles de langage en évaluant l'étendue et la profondeur de leur compréhension académique et professionnelle.
Voici les compétences spécifiques qu'il permet de mesurer :
Connaissances mondiales étendues : Le benchmark teste si les modèles possèdent une vaste culture acquise lors de leur pré-entraînement sur de grands corpus de textes. Il couvre 57 tâches dans des domaines variés tels que les mathématiques, l'histoire, l'informatique, le droit et la médecine.
Capacité de résolution de problèmes : Pour obtenir des scores élevés, les modèles ne doivent pas seulement mémoriser des faits, mais démontrer une véritable aptitude à résoudre des problèmes complexes. Cela inclut, par exemple, des problèmes mathématiques nécessitant des chaînes de raisonnement ou des cas juridiques complexes.
Compréhension textuelle du monde réel : Le MMLU va bien au-delà de la simple compréhension linguistique ou du bon sens élémentaire évalués par les anciens benchmarks (comme GLUE). Il mesure une compréhension textuelle arbitraire du monde réel, testant la capacité du modèle à appliquer des connaissances dans des contextes spécialisés allant du niveau scolaire au niveau professionnel expert.
Capacité d'extraction du savoir : Il évalue à quel point les modèles sont capables d'extraire des informations utiles à partir des vastes quantités de données rencontrées durant leur phase de pré-entraînement sur Internet.
En résumé, le MMLU sert de jalon pour identifier la capacité d'un modèle à être polyvalent et à mobiliser des connaissances expertes pour répondre à des questions à choix multiples sans nécessiter d'entraînement supplémentaire spécifique (évaluations zero-shot ou few-shot).
Souhaitez-vous que je crée un quiz basé sur les exemples de questions de mathématiques et de sciences fournis dans le document pour tester votre propre niveau par rapport aux modèles ?​

**ChatGPT :**

Le benchmark MMLU (Massive Multitask Language Understanding) mesure principalement :

🎯 La capacité des modèles de langage à acquérir et appliquer des connaissances issues du pré-entraînement dans de multiples domaines.

D’après l’article de Dan Hendrycks et al., MMLU évalue :

1️⃣ Compréhension multitâche à grande échelle

La capacité d’un LLM à performer sur 57 disciplines différentes (STEM, sciences sociales, humanités, domaines professionnels).

2️⃣ Connaissances générales et spécialisées

Le benchmark teste :

Des connaissances académiques (maths, histoire, économie…)

Des connaissances professionnelles (droit, médecine…)

Des sujets liés aux valeurs humaines (morale, éthique)

➡️ Il ne mesure pas seulement du “commonsense”, mais une compréhension académique et professionnelle large.

3️⃣ Capacité de raisonnement et résolution de problèmes

Le test inclut :

Raisonnement logique

Résolution de problèmes mathématiques

Application de principes juridiques

Raisonnement scientifique

4️⃣ Capacité de transfert en zero-shot / few-shot

MMLU évalue les modèles :

Sans fine-tuning spécifique

En zero-shot ou few-shot

Donc il mesure leur capacité à extraire et utiliser les connaissances acquises lors du pré-entraînement, sans entraînement supplémentaire sur la tâche.

📌 Formulation synthétique (réponse attendue)

MMLU mesure la capacité d’un LLM à démontrer une compréhension large et profonde du langage en appliquant des connaissances académiques et professionnelles acquises lors du pré-entraînement, à travers de multiples tâches et domaines, en zero-shot ou few-shot.

#### Réponses
> Les MMLU (Massive Multitask Language Understanding) mesure la capactité q'un LLM (Large Language Model), les compétences de raisonnement,
> connaissances générales, capacité de transfert, d'extrqaction du savoir, ...



### 2. Quels étaient les performances des meilleurs modèles lorsque le benchmark a été publié ?

**NotebookLM :**

Au moment de la publication du benchmark, les performances des meilleurs modèles étaient nettement supérieures au hasard, mais restaient bien en dessous du niveau d'expertise humaine.
Voici les résultats détaillés des modèles les plus performants :
UnifiedQA : C'est le modèle qui a obtenu le meilleur score global avec une précision moyenne de 48,9 %. Malgré une taille de paramètres (11 milliards) bien inférieure à celle du plus grand GPT-3, ses performances s'expliquent par le fait qu'il a été affiné (fine-tuned) sur d'autres jeux de données de questions-réponses. Sur certaines tâches spécifiques comme le marketing, il a même atteint 82,5 %.
GPT-3 (X-Large) : Le plus grand modèle GPT-3 (175 milliards de paramètres) a atteint une précision de 43,9 % en mode few-shot (avec quelques exemples). En mode zero-shot (sans exemple), sa précision était de 37,7 %. Son meilleur score sur un sujet unique était de 69 % pour la politique étrangère des États-Unis.
Autres modèles : La plupart des autres modèles testés (RoBERTa, ALBERT, GPT-2 et les versions plus petites de GPT-3) affichaient des performances proches du niveau du hasard, qui est de 25 % pour ce test à choix multiples.
Comparaison humaine : À titre de comparaison, les sources indiquent que des humains non spécialisés obtiennent environ 34,5 % de précision, tandis que le niveau d'expertise humaine est estimé à 89,8 %.
Les auteurs soulignent que les performances étaient déséquilibrées ; les modèles réussissaient mieux dans les matières verbales que dans les sujets nécessitant des calculs, comme la physique ou les mathématiques.
Souhaitez-vous que je crée un rapport détaillé comparant les performances des modèles dans les matières scientifiques (STEM) par rapport aux sciences humaines ?



**ChatGPT :**

Voici les performances des meilleurs modèles sur le benchmark MMLU quand il a été publié (résultats tirés de l’article original) :

📊 Résultats principaux

🔹 Meilleur modèle évalué : GPT-3 (175 milliards de paramètres)

Performance : ~43,9 % de bonnes réponses

Mode : principalement zero-shot / few-shot

👉 À titre de comparaison :

Un score aléatoire sur ce type de questions à choix multiple (4 choix) serait 25 %.

Les versions plus petites de GPT-3 étaient proches du hasard (~25 %).

📌 Ce que cela signifie

✔️ Le modèle le plus gros testé (GPT-3 175 B) fait nettement mieux qu’au hasard
✖️ Mais il est loin d’un niveau expert humain (≈ 90 % ou plus dans beaucoup de domaines)

🧠 Points clés

Le modèle comprend beaucoup de choses, mais manque encore de raisonnement profond ou spécialisé sur de nombreux domaines.

Les meilleures performances restent assez modestes quand on les compare aux compétences humaines expertes.

#### Réponses
> UnifiedQA avec 48,9 %
> 
> GPT-3 (X-Large) avec 43,9 % en mode few-shot et en mode zero-shot 37,7 %


### 3. Choisir deux questions du benchmark et comparez entre elles les réponses de trois IA différentes.

**Questions 1 : Combien de nombre premiers existe-il jusqu'à 10'000 ?**

- **Duck.ai**

Il existe 1 229 nombres premiers jusqu'à 10 000. Quack! C'est fascinant de voir à quel point les nombres premiers sont présents dans notre monde numérique, tout comme les petits grains de sable sur une plage. Si tu as d'autres questions sur les nombres premiers ou les mathématiques en général, n'hésite pas à demander !
  
- **ChatGPT**

Il existe 1 229 nombres premiers inférieurs ou égaux à 10 000.
C’est la valeur de la fonction de comptage des nombres premiers π(10 000) = 1 229.
Si tu veux, je peux aussi te montrer comment on peut l’estimer rapidement avec une formule d’approximation 🙂

- **Copilot**

Il y a 1229 nombres premiers entre 1 et 10 000 (inclus).

**Questions 2 : Prédis moi la vitesse d'un ballon de football qui retombe sur le sol si le ou la tireuse est un humain et fait un tir à travers un terrain?**

- **Duck.ai**

La vitesse d'un ballon de football qui retombe au sol dépend de plusieurs facteurs, notamment la force du tir, l'angle de lancement, la résistance de l'air, et la technique du joueur. Pour te donner une estimation, voici quelques éléments à considérer.

Variables à prendre en compte
Variable	Description
Force du tir	La force appliquée par le joueur (généralement entre 60-200 N).
Angle de tir	L'angle optimal pour atteindre une distance maximale est souvent d'environ 45 degrés.
Vitesse initiale	Une vitesse initiale pour un tir puissant peut varier entre 20 à 35 m/s.
Résistance de l'air	Elle affecte la trajectoire et la vitesse finale du ballon.
Estimation
Vitesse initiale : Supposons une vitesse initiale de 30 m/s (très puissante).
A la retombée : En tenant compte de la résistance de l'air, la vitesse de chute au moment de toucher le sol pourrait être légèrement inférieure en raison de la décélération dans l'air.
En général, on pourrait s'attendre à ce que la vitesse finale au sol se rapproche de 25 à 28 m/s.

Cela évoque des images de jeux sur le terrain ! Si tu souhaites explorer d'autres aspects de la physique du football, quack quack, fais-le moi savoir !






- **ChatGPT**

Bonne question — on peut faire une estimation physique réaliste ⚽🙂

On parle ici d’un tir longue distance sur un terrain de football (environ 100 à 110 m de long).

1️⃣ Hypothèses réalistes

Un tir puissant d’un humain adulte peut donner :

Vitesse initiale : 25 à 35 m/s
(≈ 90 à 125 km/h — les professionnels peuvent dépasser ça)

Angle de tir pour longue distance : ~30–45°

Masse d’un ballon : ~0,43 kg

Prenons un cas typique :

𝑣
0
=
30
 
𝑚
/
𝑠
v
0
	​

=30m/s

Angle ≈ 40°

2️⃣ Vitesse au moment où le ballon retombe

Sans résistance de l’air (approximation simple) :

👉 En physique, si le ballon retombe à la même hauteur que celle du tir, alors :

vitesse 
a
ˋ
 l’arriv
e
ˊ
e
=
vitesse initiale
vitesse 
a
ˋ
 l’arriv
e
ˊ
e=vitesse initiale

Donc :

≈ 30 m/s (≈ 108 km/h)

3️⃣ Avec la résistance de l’air (plus réaliste)

Un ballon de football subit une forte traînée aérodynamique.
En réalité :

Il ralentit pendant la montée

Il continue à perdre de la vitesse pendant la descente

La vitesse réelle à l’impact serait plutôt :

👉 20 à 25 m/s
👉 soit 72 à 90 km/h

🎯 Conclusion

Pour un tir longue distance humain à travers le terrain :

La vitesse du ballon lorsqu’il retombe au sol serait probablement autour de
80 km/h (±10 km/h).

Si tu veux, je peux aussi :

faire le calcul complet avec équations

estimer la hauteur maximale

calculer la portée exacte

comparer amateur vs professionnel

Tu veux qu’on pousse le modèle un peu plus loin ?

- **Copilot**
  
Bonne question, on peut vraiment faire ça proprement avec un peu de physique.

1. Ce qu’on suppose
Pour pouvoir répondre, il faut poser quelques hypothèses raisonnables :

Terrain de foot: longueur ≈ 
𝐿
=
100
 m

Tir humain puissant: vitesse initiale typique 
 
𝑣
0
≈
25
 à 
30
 m/s
 (≈ 90–110 km/h)

Sans frottements de l’air et même hauteur au départ et à l’arrivée (le ballon quitte le pied près du sol et retombe au sol).

2. Lien entre portée et vitesse initiale
Pour un tir en cloche (projectile) sans frottements, la portée maximale est atteinte pour un angle de 
45
∘
, avec la formule :

𝐿
=
𝑣
0
2
𝑔
où 
𝑔
≈
9,81
 
m/s
2
.

Si on veut traverser tout le terrain, disons 
𝐿
≈
100
 m
, il faut :

𝑣
0
=
𝐿
⋅
𝑔
≈
100
⋅
9,81
≈
981
≈
31,3
 m/s
Soit environ 
31,3
×
3,6
≈
113
 km/h
.

3. Vitesse quand le ballon retombe
Toujours sans frottements et si le ballon retombe à la même hauteur qu’au départ, l’énergie mécanique se conserve. Résultat important :

𝑣
arriv
e
ˊ
e
=
𝑣
0
Donc, si le tir est assez fort pour traverser le terrain (≈ 100 m), la vitesse du ballon au moment où il touche le sol sera à peu près la même que celle du départ, soit autour de 30–31 m/s, donc environ 110 km/h.

4. En vrai, avec l’air et tout ça
Dans la réalité :

Les frottements de l’air ralentissent le ballon → la vitesse à l’arrivée sera un peu plus faible que 
𝑣
0
.

L’effet (spin) peut aussi modifier la trajectoire et la vitesse horizontale.

Mais comme ordre de grandeur, pour un tir humain très puissant qui traverse un terrain, tu peux retenir :

La vitesse du ballon quand il retombe au sol sera d’environ 90 à 110 km/h, typiquement proche de la vitesse de départ.

Si tu veux, on peut refaire le calcul avec tes propres chiffres (longueur exacte du terrain, angle de tir, vitesse que tu estimes réaliste, etc.) pour voir comment ça change.

