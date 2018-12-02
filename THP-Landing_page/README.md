# Landing Page THP - 3 versions

Le projet contient 3 landing pages. Chacune d'entre elles cible des prospects avec des profils différents :

* Landing page 1 : landing page générale, facilitant le partage sur réseaux sociaux ne possédant pas d'outils de ciblage (blogs,...)
* Landing page 2 : cible les demandeurs d'emploi en utilisant un argumentaire axé sur le changement de vie et le marché de l'emploi dans le domaine de l'informatique
* Landing page 3 : cible les habitants de Montpellier. Un lieu unique et l'ambiance detravail sont les axes sur lesquels nous avons orienté notre communication.

Chacune d'entre elle alimente, via un formulaire d'inscription, un compte MailChimp avec 3 type de campagnes : générale, demandeur d'emploi, montpellier.

Une balise Gtag (Google Analytics) a été rajoutée dans le header pour analyser le traffic du site.

## Liens Heroku

* Landing page 1 : https://thp-landing-mtp.herokuapp.com/
* Landing page 2 : https://thp-landing-mtp.herokuapp.com/jobseeker
* Landing page 3 : https://thp-landing-mtp.herokuapp.com/montpellier

### Prerequisites

Si vous souhaitez télécharger le repo en local il vous faut réaliser les actions suivantes :

```
Bundle install
```
```
Rails db:create
```
```
Rails s
```
#### Dans le cas d'un test en environnement de production :

```
Bundle install
```
```
Rails db:create
```
```
Rails assets:precompile
```
```
Rails s -e production
```

## Authors

* **Herve Lee**
* **Clement B**
* **Thierry Kq**
* **Arthur V**
