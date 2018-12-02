# CryptoScrapping

## Travail de Thierry Kq

### Lien du site heroku


https://scrappingcrypto.herokuapp.com/

Le site est fonctionnel, mais l'update de Database a tendance à faire planter heroku :s

### En local

Après le git clone, effectuez les commandes suivantes : 

```
bundle install
rails db:create
rails db:migrate
rails s
```
Vous pouvez ensuite vous rendre sur http://localhost:3000/ pour voir le site.