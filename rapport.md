# Rapport de résolution du jeu de piste Tresor

Menniti Bilal

https://github.com/bilalm78/Tresor.git

git@github.com:bilalm78/Tresor.git

## Introduction

Le but de ce jeu est de trouver une série d'indices qui mèneront à la découverte du trésor.
Voici les étapes que nous avons suivies pour arriver au bout de ce défi.
Ce rapport décrit la manière de résoudre l'énigme qui consiste à trouver 12 indices cachés dans des dossiers et fichiers d'un dépôt Git. Pour cela, nous avons utilisé des commandes dans le terminal Linux.


Prérequis:
Nous avons commencé par cloner le dépôt Github contenant le jeu de piste à l'aide des commandes suivantes :
git clone git@github.com:bilalm78/Tresor.git

Nous avons ensuite téléchargé un fichier à l'aide de la commande suivante :
sh <(wget -q https://www.i3s.unice.fr/master-info/assets/im/tresor-shell/getprojet.sh -O -)


## Résolution des indices ##

Dans ce qui suit vous trouverez les commande utilisées pour trouver les indices

#### Trouver l'indice 2 ####

Pour trouver l'indice 2, nous avons exécuté la commande suivante :

cd tresor_shell 
./generer_probleme.py 25639

Cela a permis de rajouter les repertoires suivants : secret.log et indices. D'après l'indice 1, l'indice 2 se trouvait dans le répertoire tresor_shell/indices/12345. Nous avons donc exécuté la commande suivante pour accéder à cet indice :

cd indices/12345

Nous avons ensuite créé un répertoire indices-sauvegardes pour enregistrer les indices trouvés au fur et à mesure avec les commandes suivantes :

mkdir indices-sauvegardes
cp indices/12345/indice indices-sauvegardes/indice2

Nous avons enfin affiché l'indice en utilisant la commande :
cat indices/12345/indice


Note:
Pour ajouté le fichier à notre suivi Git, on le valide avec un message de commit, qui inclut l'indice de l'issue associée au changement.

git add indice2

Pour fermer correctement l'issue associée à l'indice 2, on utilise la commande suivante :

git commit -m "ajout de l'indice 2 fixes #1"       ***#1 correspond a l'issue associé a l'indice2***

Enfin, pour envoyer nos modifications sur notre dépôt distant, on utilise la commande git push.


#### Trouver l'indice 3 ####

Pour trouver l'indice 3, nous avons tout d'abord accédé au répertoire /usr à l'aide de la commande suivante :

cd /usr  

avec ls nous pouvons voir qu'il y'a 12 sous-repertoires

Nous avons ensuite compté le nombre de sous-répertoires avec la commande :

ls -l | wc -l

Cela nous a donné le nombre de 13 (c'est-à-dire 12 sous-répertoires et le dossier lui-même). Nous sommes ensuite retournés dans le répertoire tresor_shell à l'aide de la commande :

cd ~/Tresor/tresor_shell

Comme il y avait 12 sous-répertoires et que nous cherchions l'indice 3, nous avons tapé la commande suivante :

./indice_suivant.py 3 12

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/63736. Nous avons donc enregistré cet indice avec la commande suivante :

cp indices/63736/indice indices-sauvegardes/indice3

Nous avons enfin affiché l'indice en utilisant la commande :
cat indices/63736/indice


#### Trouver l'indice 4 ####

Pour trouver l'indice 4, nous avons utilisé le nom de l'ordinateur comme indication. Nous avons donc exécuté la commande hostname pour afficher le nom de l'ordinateur qui était ***monk***. Nous avons ensuite tapé la commande suivante :

./indice_suivant.py 4 monk

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/74222. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/74222/indice indices-sauvegardes/indice4

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/74222/indice 


#### Trouver l'indice 5 ####

L'indice 5 est caché dans un dossier protégé contre l'écrasement. Pour trouver l'option de mv qui empêche l'écrasement, nous avons consulté le manuel de mv en utilisant la commande ***man mv***

Nous avons trouvé que l'option qui empêche l'écrasement est -n. Nous avons donc exécuté la commande suivante pour trouver l'indice 5 :

./indice_suivant.py 5 -n

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/12586. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/12586/indice indices-sauvegardes/indice5

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/12586/indice                      
                    

#### Trouver l'indice 6 ####

L'indice 6 est caché dans le fichier universe situé dans le répertoire /comptes/m/mb905518/tresor_shell. Pour trouver cet indice, nous avons exécuté la commande suivante :

ls -a .cachette 

Cette commande nous a permis de voir la présence du fichier .universe dans le dossier .cachette. Nous avons ensuite affiché le contenu de ce fichier en utilisant la commande suivante :

Ce qui nous a donné le code : 494549. Nous avons ensuite exécuté la commande suivante pour trouver l'indice 6 :

./indice_suivant.py 6 494549     

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/41977. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/41977/indice indices-sauvegardes/indice6

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/41977/indice


#### Trouver l'indice 7 ####

Pour trouver l'indice 7, nous avons utilisé la commande suivante pour afficher la valeur de la variable PATH :echo$PATH 

On obtient le répertoire:

/comptes/m/mb905518/.opam/4.07.0/bin:/users/etudiant/m/mb905518/bin:/users/etudiant/m/mb905518/bin:/usr/local/bin:/bin:/usr/bin:/usr/bin/X11:.

Le dernier chemin listé dans notre `PATH` correspond à **.**, 


Nous avons ensuite exécuté la commande suivante pour trouver l'indice 7 :

./indice_suivant.py 7 .    

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/45736. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/45736/indice indices-sauvegardes/indice7

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/45736/indice


#### Trouver l'indice 8 ####

Pour trouver l'indice 8, Nous nous sommes placés dans le répertoire images et avons regardé les cinq dernières lignes du fichier baleine.jpg :

cd images
tail -n 5 baleine.jpg

ce qui affiche le message suivant:

Sur mes cahiers d écolier
Sur mon pupitre et les arbres
Sur le sable sur la neige
J’écris ton nom

![Image de la baleine](baleine.jpg)

on retourne dans le repartoire parent: cd ..


Les derniers mots de chaque phrase sont "écolier arbres neige nom", nous avons ensuite exécuté la commande suivante pour trouver l'indice 8 :

./indice_suivant.py 8 écolier arbres neige nom 

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/59443 . Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/59443/indice indices-sauvegardes/indice8

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/59443/indice
 


#### Trouver l'indice 9 ####

Pour trouver l'indice 9, nous avons créé le fichier toutpuissant.txt contenant les lignes suivantes :
Je veux utiliser sudo.
BM

touch toutpuissant.txt
echo "je veux utiliser sudo." >> toutpuissant.txt
echo "BM" >> toutpuissant.txt

Nous avons ensuite déplacé le fichier dans le répertoire /usr/local :

sudo mv toutpuissant.txt /usr/local

NB : ***sur le pc de l’université on a pas les permission.***

Nous avons utilisé "impossible" comme indication pour trouver l'indice 9 :

./indice_suivant.py 9 impossible 

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/28105 . Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/28105/indice indices-sauvegardes/indice9

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/28105/indice


#### Trouver l'indice 10 ####

Pour trouver l'indice 10, on verifie que le fichier /usr/share/dict/words est installé en exécutant

ls /usr/share/dict/ 

Ensuite, en utilisant la commande wc avec le paramètre -w, nous pouvons trouver le nombre de mots dans le dictionnaire /usr/share/dict/words :

wc -w ~/usr/share/dict/words

Cette commande retourne le nombre de mots dans le dictionnaire, qui est 102401.

Nous avons ensuite exécuté la commande suivante pour trouver l'indice 10 :

./indice_suivant.py 10 102401    

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/17285. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/17285/indice indices-sauvegardes/indice10

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/17285/indice 


#### Trouver l'indice 11 ####

Pour trouver l'indice 11, on doit trouver le mot qui apparaît avant "tomcat" dans le fichier /usr/share/dict/words. Pour ce faire, nous pouvons utiliser la commande grep avec l'option -B 1, qui permet de récupérer le mot précédent :

grep -B 1 tomcat ~/usr/share/dict/words

et on obtient:
tombstones
tomcat
tomcat's
tomcats

Cette commande retourne plusieurs mots, mais le mot "tombstones" est le bon.


Nous avons ensuite exécuté la commande suivante pour trouver l'indice 11 :

./indice_suivant.py 11 tombstones    

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/20800. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/20800/indice indices-sauvegardes/indice11

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/20800/indice 


#### Trouver l'indice 12 ####

Pour trouver l'indice 12, on doit trouver les options de la commande sort pour trier la liste des fichiers dans le répertoire /bin selon leur taille en octets, du plus grand au plus petit. Pour ce faire, nous pouvons utiliser la commande:

ls -la /bin/ | sort -r

qui affiche la liste des fichiers triés selon leur taille. La commande sort -r est l'option recherchée.



Nous avons ensuite exécuté la commande suivante pour trouver l'indice 12 :

./indice_suivant.py 12 -r   

Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/41014. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/41014/indice indices-sauvegardes/indice12

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/41014/indice
                         

#### Trouver l'indice final 13 ####

On remarque que les vrais indices ont des tailles différentes des faux indices, qui ont tous la même taille de 1452 octets. Utilisez la commande 

find . -size -1452c 

pour trouver tous les fichiers ayant une taille inférieure à 1452 octets, qui devraient correspondre aux vrais indices. Ensuite, choisissez le fichier dont le numéro n'a pas encore été utilisé. Dans ce cas, le numéro du fichier non utilisé est 21683.


Cela nous a renvoyé l'emplacement de notre prochain indice qui était indices/21683. Nous avons alors enregistré cet indice dans le dossier indices-sauvegardes en utilisant la commande suivante :

cp indices/21683/indice indices-sauvegardes/indice13

Nous avons ensuite affiché le contenu de cet indice en utilisant la commande suivante :
cat indices/21683/indice

  
### Indice 13 : Bravo ! ###

#### Vous avez trouvé tous les indices ####

 _________________________________________ 
/                                         \
|          🎉 Félicitations ! 🥳           |
\                                         /
 ----------------------------------------- 
  \                           .       .
   \                         / `.   .' " 
    \                .---.  <    > <    >  .---.
     \               |    \  \ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \~~~\.'                    `./~~~/
       ---------   \__/                        \__/
      .'  O    \     /               /       \  " 
     (_____,    `._.'               |         }  \/~~~/
      `----.          /       }     |        /    \__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'   
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>



Note:

git config --global user.name "bilalm78"

git config --global user.email "mennitibilal8@gmail.com"

git config --global core.editor "code --wait"

Ces commandes permettent de  configurer le nom d'utilisateur, l'adresse e-mail et l'éditeur de code pour Git.

Une fois que la configuration est en place, on peut ajouter des fichiers à nos suivi Git à l'aide de la commande git add. 

git add indice2

Après avoir ajouté le fichier à notre suivi Git, on le valide avec un message de commit, qui inclut l'indice de l'issue associée au changement. Pour fermer correctement l'issue associée à l'indice 2, on utilise la commande suivante :

git commit -m "ajout de l'indice 2 fixes #1"

***#1 correspond a l'issue associé a l'indice2***

Enfin, pour envoyer nos modifications sur notre dépôt distant, on utilise la commande git push.

on réitère ceci avec tous les autres indices.

git add indice3
git commit -m "ajout de l'indice 3 fixes #2"
git push

git add indice4
git commit -m "ajout de l'indice 4 fixes #3"
git push

git add indice5
git commit -m "ajout de l'indice 5 fixes #4"
git push

git add indice6
git commit -m "ajout de l'indice 6 fixes #5"
git push

git add indice7
git commit -m "ajout de l'indice 7 fixes #6"
git push

git add indice8
git commit -m "ajout de l'indice 8 fixes #7"
git push

git add indice9
git commit -m "ajout de l'indice 9 fixes #8"
git push

git add indice10
git commit -m "ajout de l'indice 10 fixes #9"
git push

git add indice11
git commit -m "ajout de l'indice 11 fixes #10"
git push

git add indice12
git commit -m "ajout de l'indice 12 fixes #11"
git push

git add indice13
git commit -m "ajout de l'indice 13 fixes #12"
git push


