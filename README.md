### Dependencies:
* [ox_target](https://github.com/overextended/ox_target)
* [ox_lib](https://github.com/overextended/ox_target)
* [nakres_skill_minigame](https://github.com/NNakreSS/nakres_skill_minigame/tree/main)
* [es_extended](https://github.com/esx-framework/esx_core)

<br>
<br>

### Installation:
* Download ZIP
* Drag and drop resource into your resources folder.
* Start resource
* Add Images into your inventory script
* Add Items into Inventory scripts

* [ox_inventory](https://github.com/overextended/ox_inventory)
```lua
	['walkingmansign'] = {
		label = 'Señal Caminar',
		weight = 500,
		stack = false,
		close = false,
	},
	['stopsign'] = {
		label = 'Señal Parar',
		weight = 500,
		stack = false,
		close = false,
	},
	['dontblockintersectionsign'] = {
		label = 'No Bloquear Intersección',
		weight = 500,
		stack = false,
		close = false,
	},
	['uturnsign'] = {
		label = 'Señal en U',
		weight = 500,
		stack = false,
		close = false,
	},
	['noparkingsign'] = {
		label = 'No Estacionarse',
		weight = 500,
		stack = false,
		close = false,
	},
	['leftturnsign'] = {
		label = 'Señal Giro a la Izquierda',
		weight = 500,
		stack = false,
		close = false,
	},
	['rightturnsign'] = {
		label = 'Señal Giro a la Derecha',
		weight = 500,
		stack = false,
		close = false,
	},
	['notrespassingsign'] = {
		label = 'No Traspasar',
		weight = 500,
		stack = false,
		close = false,
	},
	['yieldsign'] = {
		label = 'Ceder el Paso',
		weight = 500,
		stack = false,
		close = false,
	},
```

### OR

* [qs-inventory](https://buy.quasar-store.com/package/5677336)
```lua
    ['walkingmansign'] =  {
        ['name'] =  'walkingmansign',
        ['label'] =  'Señal Caminar',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'walkingmansign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['stopsign'] =  {
        ['name'] =  'stopsign',
        ['label'] =  'Señal Parar',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'stopsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['dontblockintersectionsign'] =  {
        ['name'] =  'dontblockintersectionsign',
        ['label'] =  'No Bloquear Intersección',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'dontblockintersectionsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['uturnsign'] =  {
        ['name'] =  'uturnsign',
        ['label'] =  'Señal en U',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'uturnsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['noparkingsign'] =  {
        ['name'] =  'noparkingsign',
        ['label'] =  'No Estacionarse',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'noparkingsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['leftturnsign'] =  {
        ['name'] =  'leftturnsign',
        ['label'] =  'Señal Giro a la Izquierda',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'leftturnsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['rightturnsign'] =  {
        ['name'] =  'rightturnsign',
        ['label'] =  'Señal Giro a la Derecha',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'rightturnsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['notrespassingsign'] =  {
        ['name'] =  'notrespassingsign',
        ['label'] =  'Señal No Traspasar',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'notrespassingsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },
    ['yieldsign'] =  {
        ['name'] =  'yieldsign',
        ['label'] =  'Señal de Ceder el Paso',
        ['weight'] =  200,
        ['type'] =  'item',
        ['image'] =  'yieldsign.png',
        ['unique'] =  false,
        ['useable'] =  true,
        ['shouldClose'] =  true,
        ['combinable'] =  nil,
        ['description'] =  'Nice to eat',
        ["created"] = nil,
        ["decay"] = 0.01,
        ["delete"] = false
    },

```


### Credits:
This script was converted from QBCore to ESX. Taken from the following creators:
[Hyper](https://github.com/itsHyper) and [Snipe (pushkart2)](https://github.com/pushkart2) This script wouldn't be possible without them.
