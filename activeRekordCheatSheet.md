# ActiveRecord Cheat sheet

## Commandes 
- Installer Rake
    - ``gem install rake``

- Tâche de rake 
    - ``rake --tasks`` (à éxecuter dans le dossier où se trouve le Rakefile)

- Créer une migration
    - ``rake db:new_migration[Ma Meilleure Migration]``

- Créer la base de données
    - ``rake db:create``

- Supprimer la DB
    - ``rake db:drop``

- Revenir d'une migration
    - ``rake db:migrate:down``

- Avancer d'une migration
    - ``rake db:migrate:up``


## Structure de projet

- Mon super Projet
    - db
        - migrate
        - config.yml
        - schema.rb
    - models
        - monsupermodel1.rb
        - monsupermodel2.rb
    - main.rb
    - models.rb
    - Rakefile
    - connection.rb

## Convention

### Models

Les models sont écrit au singulier (anglais) et tout en minuscule.

Chaque model commence par : 

``` ruby
class monsupermodel1.rb < ActiveRecord::Base
    #Des trucs très cool
end 
``` 

### DB

Le nom des tables doivent être au pluriel et en minuscule
exemple : "categories"

## Models

Il faut commencer par importer les models dans le ``main.rb`` 

Dans le main.rb :
```ruby
require_relative 'models'
```
ensuite on créer un fichier ``models.rb``. On va lister les fichiers dans le dossier models et les importer.

```ruby
Dir.glob("models/*").each {|file| require_relative file}
```

La structure par défaut d'un fichier de model le nom de l'objet commence par une majuscule:

```ruby
class Monmodel < ActiveRecord::Base

end
```


## Database

Dans le dossier database on a un fichier config.yml

config.yml
```yml
development:
  adapter:  mysql2
  host:     localhost
  username: test
  password: 1234
  database: NomDeLaDB
```

## Liens 0* ** 1*

Dans nos models on doit déclarer les liens entre les tables.
Exemple un produits est lié a un fournisseurs


### One to Many
product.rb
```ruby
class Product < ActiveRecord::Base
    belongs_to :provider
end

``` 
provider.rb
```ruby
class Provider < ActiveRecord::Base

    has_many :products

end
```
