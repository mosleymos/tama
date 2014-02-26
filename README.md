# Tama

Tama est la gem de base qui servira a la construction d'application rails ou autre.<br>
Elle servira tant de librairie que d'executable.<br>
Le point a travailler sera l'accessibilité de celle ci.

## Installation

Add this line TODO:ur application's Gemfile:

    gem 'tama'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tama

## Usage

Tama est une clone du tamagotchi cree par Bandai mais en amélioré.

## Contributing

1. Fork it ( http://github.com/<mosleymos>/tama/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Variables du TAMA a intégrer

```
module Tama
        #Constantes principales du jeu
        $TAMA_LIFETIME=8
        $TAMA_HEALTH=100
        $TAMA_MENTAL=100
        
        #Largeur de cadre dans le cadre d'une
        #implementation graphique
        $HEIGHT=300
        $WIDTH=300
        
        #Etats de vie
        $LIFE_STATUS=["oeuf","enfant","adulte","age","mort"]
        $MENTAL_STATUS=["neutre","joyeux","depressif","triste"]
        $HEALTH_STATUS=["bonne sante","malade","souffrant","agonisant","neutre"]

end
```

Nb pour le lancement d'un nouvel animal dans le pry executer:
```
$ rake install
$ pry
>>require 'tama'
>>tama = Tama::VirtualAnimal.new()

```
