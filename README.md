### Dependencias:
* [ox_target](https://github.com/overextended/ox_target)
* [nakres_skill_minigame](https://github.com/NNakreSS/nakres_skill_minigame/tree/main)
* [dpemotes](https://github.com/andristum/dpemotes)

<br>
<br>

### Paso 1:
Instala el script y arrastra esx_robosenales en la carpeta de tus scripts.

### Paso 2:
Abre el script y dirígete a **esx_robosenales/imagenes** despúes coloca las imagenes dentro de la carpeta de imagenes de tu **inventario**.


### Paso 3: 
Coloca los siguientes items dentro de tu inventario:

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


### Creditos:
Este script fue convertido de QBCore a ESX. Sacado de los siguientes creadores:
[Hyper](https://github.com/itsHyper) y [Snipe (pushkart2)](https://github.com/pushkart2) Este script no sería posible sin ellos.
