# Gulp-php-autoreload-sass

## Installation

** Pré-recquis: Nodejs **

### Installation de Gulp globalement

```ini
npm install gulp -g
```

**Ajout du fichier gulpfile.js** (Copier le fichier dans le dossier racine de dev)

### Création du projet

```ini
npm init
```

### Installation des dépendances de dev dans le projet

  (Option  --save-dev)

- Gulp
- gulp-connect-php
- sass
- browser-sync

```ini
npm install gulp --save-dev
```

```ini
npm install gulp-connect-php --save-dev
```

```ini
npm install gulp-sass --save-dev
```

```ini
npm install browser-sync --save-dev

```

### Installation du projet

```ini
npm install 
```

NB:
Ajouter dans .gitignore:

```ini
# Node
node_modules
npm-debug.log
```

### Utilisation

```ini
gulp
```

### Références

1. [Tuto GULP](https://la-cascade.io/gulp-pour-les-debutants)


2. [Guide d'installation avec Codeigniter](https://etienner.fr/serveur-php-avec-gulp)

PHP avec sass et livereload (Utilise ici framework CodeIgniter)
dans n'importe quel dossier
*Installation en 5 mn: **NB 2 fichiers** tout en bas*

### Résumé

```ini
npm install gulp
```

```ini
npm install gulp-connect-php
```

```ini
git clone https://github.com/bcit-ci/CodeIgniter.git
```

```
cd Codeigniter && mkdir assets && cd assets && mkdir css && mkdir sass
```

Ajouter les 2 fichiers

```ini
npm install
```

http://127.0.0.1

NB:
Ajouter dans .gitignore:

```ini
# Node
node_modules
npm-debug.log
```

Go !

```ini
gulp
```

## IMPORTANT: Pour browserSync, même un fichier PHP doit contenir un

```html
<body>
</body>
```
