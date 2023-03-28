return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["polloasado"] = {
		label = "Pollo Asado",
		weight = 259,
		stack = true,
		close = true,
		description = "Pollo Asado",
		client = {
			image = "pollo_asao.png",
		}
	},

	["Ganzúa"] = {
		label = "Ganzúa",
		weight = 300,
		stack = true,
		close = true,
		description = "Muy útil si pierdes mucho las llaves.. o si lo quieres usar para otra cosa...",
		client = {
			image = "lockpick.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 200,
		stack = true,
		close = true,
		description = "Flour - cooking ingredient",
		client = {
			image = "flour.png",
		}
	},

	["meth1g"] = {
		label = "Bolsa de Metanfetaminas",
		weight = 1000,
		stack = true,
		close = true,
		description = "Bolsa de cocaina, lista para vender y endrogarse a full.",
		client = {
			image = "meth1g.png",
		}
	},

	["moneybag"] = {
		label = "Bolsa de dinero",
		weight = 0,
		stack = false,
		close = true,
		description = "Una bolsa con dinero en efectivo",
		client = {
			image = "moneybag.png",
		}
	},

	["cajetilla_tabaco"] = {
		label = "Cajetilla de tabaco",
		weight = 200,
		stack = true,
		close = true,
		description = "Cajetilla de tabaco con 20 cigarros",
		client = {
			image = "cajetilla_tabaco.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 150,
		stack = true,
		close = true,
		description = "Bocadillo de Lomo",
		client = {
			image = "bocadillo.png",
		}
	},

	["croquetas"] = {
		label = "Croquetas Caseras",
		weight = 200,
		stack = true,
		close = true,
		description = "Croquetas Caseras",
		client = {
			image = "croquetas.png",
		}
	},

	["uwumintessence"] = {
		label = "Mint Essence",
		weight = 200,
		stack = true,
		close = true,
		description = "Essence from the Mint Gods.",
		client = {
			image = "uwumintessence.png",
		}
	},

	["coffee_serve"] = {
		label = "[Servir] Café",
		weight = 500,
		stack = true,
		close = true,
		description = "Bomba de Cafeina",
		client = {
			image = "coffee_serve.png",
		}
	},

	["casino_chips"] = {
		label = "Ficha casino (10$)",
		weight = 0,
		stack = true,
		close = false,
		description = "Ficha para Juegos de Casino",
		client = {
			image = "casino_chips.png",
		}
	},

	["box"] = {
		label = "A cardboard box",
		weight = 10000,
		stack = false,
		close = false,
		description = "Its a box!",
		client = {
			image = "placeholder.png",
		}
	},

	["weed_joint"] = {
		label = "Porro de Marihuana",
		weight = 1000,
		stack = true,
		close = true,
		description = "Rico porro, de la mejor calidad.",
		client = {
			image = "weed_joint.png",
		}
	},

	["weed_critical-kush_seed"] = {
		label = "Critical Kush Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Critical Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_white-widow_bud"] = {
		label = "Cogollo White Widow 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g White Widow",
		client = {
			image = "budweed.png",
		}
	},

	["cleaningkit"] = {
		label = "Kit de Limpieza",
		weight = 250,
		stack = true,
		close = true,
		description = "¡Un paño de microfibra con un poco de jabón hará que tu auto vuelva a brillar!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Coral Azul",
		weight = 1000,
		stack = true,
		close = true,
		description = "Corales Azules...",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["uwupancake"] = {
		label = "uWu Pancake",
		weight = 200,
		stack = true,
		close = true,
		description = "Korean savory pancake made with scallions.",
		client = {
			image = "uwupancake.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Cadena de Oro",
		weight = 2000,
		stack = true,
		close = true,
		description = "Cadena de oro de 10 kilates",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["weed_strawberry-banana"] = {
		label = "Strawberry Banana 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Strawberry Banana",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_critical-kush_bud"] = {
		label = "Cogollo Critical Kush 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Critical Kush Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["coke_small_brick"] = {
		label = "Paquete de Cola",
		weight = 350,
		stack = false,
		close = true,
		description = "Paquete pequeño de cocaína, usado principalmente para tratos y ocupa mucho espacio",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["head_bag"] = {
		label = "Bolsa Cabeza",
		weight = 100,
		stack = true,
		close = true,
		description = "Bolsa para la cabeza, evita que sus víctimas le vean",
		client = {
			image = "head_bag.png",
		}
	},

	["tea"] = {
		label = "Tempting Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Its not just tea...",
		client = {
			image = "tea.png",
		}
	},

	["electric_scrap"] = {
		label = "Chatarra Electronica",
		weight = 100,
		stack = true,
		close = false,
		description = "Probablemente puedas hacer algo bueno con esto",
		client = {
			image = "electric_scrap.png",
		}
	},

	["police_stormram"] = {
		label = "Ariete",
		weight = 18000,
		stack = true,
		close = true,
		description = "Una buena herramienta para romper puertas",
		client = {
			image = "police_stormram.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Telefono muy caro",
		client = {
			image = "samsungphone.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Moneda",
		weight = 200,
		stack = false,
		close = true,
		description = "¿Por qué alguien compraría dinero que no existe? ¿Cuántos contendría?",
		client = {
			image = "cryptostick.png",
		}
	},

	["advrepairkit"] = {
		label = "Kit de reparación",
		weight = 100,
		stack = true,
		close = true,
		description = "Kit de repariación",
		client = {
			image = "advrepairkit.png",
		}
	},

	["twerks_candy"] = {
		label = "Twix",
		weight = 100,
		stack = true,
		close = true,
		description = "Unos deliciosos dulces :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["whiskey"] = {
		label = "Whisky",
		weight = 500,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "whiskey.png",
		}
	},

	["slick"] = {
		label = "Neumáticos slicks",
		weight = 100,
		stack = true,
		close = true,
		description = "Neumáticos slicks",
		client = {
			image = "slick.png",
		}
	},

	["piston"] = {
		label = "Pistón",
		weight = 100,
		stack = true,
		close = true,
		description = "Pistón",
		client = {
			image = "piston.png",
		}
	},

	["coke"] = {
		label = "Polvo de Cocaina",
		weight = 1000,
		stack = true,
		close = true,
		description = "Polvo de cocaina, Listo para embolsar.",
		client = {
			image = "coke.png",
		}
	},

	["umami"] = {
		label = "Umami Beans",
		weight = 300,
		stack = true,
		close = true,
		description = "Healthy and Delicious",
		client = {
			image = "umami.png",
		}
	},

	["coffee"] = {
		label = "Cafe",
		weight = 200,
		stack = true,
		close = true,
		description = "Bomba de Cafeina",
		client = {
			image = "coffee.png",
		}
	},

	["coca_leaves"] = {
		label = "hojas de coca",
		weight = 50,
		stack = true,
		close = false,
		description = "Hojas de coca para producir Cocaína.",
		client = {
			image = "coca-leaves.png",
		}
	},

	["jerry_can"] = {
		label = "Bidon de Gasolina 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "Una lata llena de combustible",
		client = {
			image = "jerry_can.png",
		}
	},

	["cola_serve"] = {
		label = "[Servir] eCola",
		weight = 200,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "cola_serve.png",
		}
	},

	["grinder"] = {
		label = "Grinder",
		weight = 50,
		stack = true,
		close = false,
		description = "Triturador de sustancias estupefacientes",
		client = {
			image = "grinder.png",
		}
	},

	["susp2"] = {
		label = "Suspensión deportiva",
		weight = 100,
		stack = true,
		close = true,
		description = "Suspensión deportiva",
		client = {
			image = "susp2.png",
		}
	},

	["sharkhammer"] = {
		label = "Tiburón Martillo",
		weight = 100,
		stack = true,
		close = true,
		description = "Tiburón Martillo",
		client = {
			image = "sharkhammer.png",
		}
	},

	["isco_pesca"] = {
		label = "Cebo de pesca",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishingbait.png",
		}
	},

	["spaguetti"] = {
		label = "Espaguetis Boloñesa",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Espaguetis a la Boloñesa",
		client = {
			image = "spaguetti.png",
		}
	},

	["pizza"] = {
		label = "Pizza",
		weight = 150,
		stack = true,
		close = true,
		description = "Pizza Margarita",
		client = {
			image = "pizza.png",
		}
	},

	["verduras"] = {
		label = "Verduras",
		weight = 100,
		stack = true,
		close = false,
		description = "Verduras para cocinar",
		client = {
			image = "verduras.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_power-kush_bud"] = {
		label = "Cogollo Power Kush 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Power Kush Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["peixe_exotico_pesca"] = {
		label = "Peces exóticos",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishingshark.png",
		}
	},

	["mining_copperbar"] = {
		label = "Barra de cobre",
		weight = 500,
		stack = true,
		close = true,
		description = "Barra de cobre",
		client = {
			image = "mining_copperbar.png",
		}
	},

	["car_plate"] = {
		label = "Cambio Matricula",
		weight = 100,
		stack = true,
		close = true,
		description = "Cambios para matriculas",
		client = {
			image = "plate.png",
		}
	},

	["xtc"] = {
		label = "Pastilla de Extasis",
		weight = 50,
		stack = true,
		close = true,
		description = "Toma esas pastillas bebé",
		client = {
			image = "xtc.png",
		}
	},

	["fishinglootbig"] = {
		label = "Botín Grande",
		weight = 100,
		stack = true,
		close = true,
		description = "Botín Grande",
		client = {
			image = "fishinglootbig.png",
		}
	},

	["ronshot"] = {
		label = "[Servir] Ron",
		weight = 500,
		stack = true,
		close = true,
		description = "Nada como un buen shot de ron",
		client = {
			image = "ronshot.png",
		}
	},

	["rolex_watch"] = {
		label = "Reloj Rolex",
		weight = 50,
		stack = true,
		close = true,
		description = "Un reloj",
		client = {
			image = "goldwatch.png",
		}
	},

	["joint"] = {
		label = "Porro",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney estaría muy orgulloso de ti",
		client = {
			image = "joint.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["printerdocument"] = {
		label = "Documento",
		weight = 500,
		stack = false,
		close = true,
		description = "Un documento, es un elemento físico o electrónico con el que se acredita alguna cosa",
		client = {
			image = "printerdocument.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Los fuegos artificiales son un tipo de dispositivos pirotécnicos usados normalmente con fines estéticos",
		client = {
			image = "firework3.png",
		}
	},

	["codfish"] = {
		label = "Bacalao",
		weight = 100,
		stack = true,
		close = true,
		description = "Animal Marino Bacalao",
		client = {
			image = "codfish.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Bolsa hermetica vacía",
		weight = 5,
		stack = true,
		close = true,
		description = "Una pequeña bolsa vacia",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["agua"] = {
		label = "Agua para cocinar",
		weight = 500,
		stack = true,
		close = false,
		description = "Agua para utilizar en tus recetas, pero que tambien te puedes beber",
		client = {
			image = "water_bottle.png",
		}
	},

	["empanada"] = {
		label = "Empanada de Verdura",
		weight = 250,
		stack = true,
		close = true,
		description = "Empanada de Verdura",
		client = {
			image = "empanada_verdura.png",
		}
	},

	["weed_og-kush_bud"] = {
		label = "Cogollo OGKush 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g OG Kush",
		client = {
			image = "budweed.png",
		}
	},

	["mining_goldbar"] = {
		label = "Barra de oro",
		weight = 500,
		stack = true,
		close = true,
		description = "Barra de oro",
		client = {
			image = "mining_goldbar.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["plastic"] = {
		label = "Plastico",
		weight = 100,
		stack = true,
		close = false,
		description = "¡RECICLAR! -Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["mackerel"] = {
		label = "Caballa",
		weight = 100,
		stack = true,
		close = true,
		description = "Animal Marino Caballa",
		client = {
			image = "mackerel.png",
		}
	},

	["goldbar"] = {
		label = "Barra de Oro",
		weight = 7000,
		stack = true,
		close = true,
		description = "Me parece bastante caro",
		client = {
			image = "goldbar.png",
		}
	},

	["spray"] = {
		label = "Spray",
		weight = 1000,
		stack = true,
		close = true,
		description = "Grafitea la ciudad a tu gusto",
		client = {
			image = "spray.png",
		}
	},

	["jointcbd"] = {
		label = "Porro de CBD",
		weight = 200,
		stack = true,
		close = true,
		description = "Porro de CBD",
		client = {
			image = "jointcbd.png",
		}
	},

	["brake_pads"] = {
		label = "Pastillas de freno",
		weight = 100,
		stack = true,
		close = true,
		description = "Pastillas de freno",
		client = {
			image = "brake_pads.png",
		}
	},

	["tofu"] = {
		label = "Firm Tofu",
		weight = 200,
		stack = true,
		close = true,
		description = "Tofu. Save a Cow and chow on Tofu!",
		client = {
			image = "tofu.png",
		}
	},

	["uwu_toy2"] = {
		label = "uWu Scratzes",
		weight = 50,
		stack = true,
		close = false,
		description = "Scratzes ",
		client = {
			image = "uwu_toy2.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Software útil para derribar algunas vallas",
		client = {
			image = "usb_device.png",
		}
	},

	["weed_packaged"] = {
		label = "Bolsa de hierba",
		weight = 1000,
		stack = true,
		close = true,
		description = "Bolsa de hierba, recortada y lista para vender.",
		client = {
			image = "weed_packaged.png",
		}
	},

	["thermite"] = {
		label = "Termita",
		weight = 1000,
		stack = true,
		close = true,
		description = "A veces desearías que todo se quemara",
		client = {
			image = "thermite.png",
		}
	},

	["rolling_paper"] = {
		label = "Papel de Liar",
		weight = 0,
		stack = true,
		close = true,
		description = "Papel fabricado específicamente para envolver y fumar tabaco o cannabis",
		client = {
			image = "rolling_paper.png",
		}
	},

	["silver"] = {
		label = "Plata",
		weight = 100,
		stack = true,
		close = false,
		description = "Una buena pieza de plata",
		client = {
			image = "silver.png",
		}
	},

	["pinger"] = {
		label = "Analizador",
		weight = 1000,
		stack = true,
		close = true,
		description = "Con un analizador y tu teléfono puedes enviar tu ubicación",
		client = {
			image = "pinger.png",
		}
	},

	["avocado"] = {
		label = "Avocado",
		weight = 300,
		stack = true,
		close = true,
		description = "Avocado",
		client = {
			image = "avocado.png",
		}
	},

	["gold"] = {
		label = "Oro",
		weight = 100,
		stack = true,
		close = false,
		description = "Pepita de oro",
		client = {
			image = "gold.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Bolsa de Evidencias Vacia",
		weight = 0,
		stack = true,
		close = false,
		description = "Se usa mucho para mantener el ADN alejado de la sangre, los casquillos de bala y más",
		client = {
			image = "evidence.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Los fuegos artificiales son un tipo de dispositivos pirotécnicos usados normalmente con fines estéticos",
		client = {
			image = "firework4.png",
		}
	},

	["shock_absorber"] = {
		label = "Amortiguador",
		weight = 100,
		stack = true,
		close = true,
		description = "Amortiguador",
		client = {
			image = "shock_absorber.png",
		}
	},

	["fishingrod"] = {
		label = "Caña de Pescar",
		weight = 100,
		stack = true,
		close = true,
		description = "Caña de Pescar",
		client = {
			image = "fishingrod.png",
		}
	},

	["tires"] = {
		label = "Llantas",
		weight = 100,
		stack = true,
		close = true,
		description = "Llantas",
		client = {
			image = "tires.png",
		}
	},

	["fishingtin"] = {
		label = "Lata Oxidada",
		weight = 100,
		stack = true,
		close = true,
		description = "Lata Oxidada",
		client = {
			image = "fishingtin.png",
		}
	},

	["weed_amnesia_bud"] = {
		label = "Cogollo Amnesia 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Amnesia",
		client = {
			image = "budweed.png",
		}
	},

	["certificate"] = {
		label = "Certificado",
		weight = 0,
		stack = true,
		close = true,
		description = "El certificado es un tipo de texto administrativo empleado para constatar un determinado hecho",
		client = {
			image = "certificate.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Kit de Reparacion Avanzado",
		weight = 4000,
		stack = true,
		close = true,
		description = "Una bonita caja de herramientas con cosas para reparar tu vehículo",
		client = {
			image = "advancedkit.png",
		}
	},

	["lighter"] = {
		label = "Mechero",
		weight = 0,
		stack = true,
		close = true,
		description = "Es un reactor químico portátil usado para generar una llama",
		client = {
			image = "lighter.png",
		}
	},

	["stone"] = {
		label = "Piedra",
		weight = 100,
		stack = true,
		close = false,
		description = "Pieza de piedra",
		client = {
			image = "stone.png",
		}
	},

	["cokebrick"] = {
		label = "Ladrillo de Cocaina",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ladrillo de cocaina, listo para volver polvo.",
		client = {
			image = "cokebrick.png",
		}
	},

	["carne"] = {
		label = "Paquete de Carne",
		weight = 250,
		stack = true,
		close = false,
		description = "Carne para cocinar",
		client = {
			image = "carne.png",
		}
	},

	["fishingloot"] = {
		label = "Botín Pequeño",
		weight = 100,
		stack = true,
		close = true,
		description = "Botin pequeño",
		client = {
			image = "fishingloot.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Los fuegos artificiales son un tipo de dispositivos pirotécnicos usados normalmente con fines estéticos",
		client = {
			image = "firework1.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "Una tarjeta de seguridad... me pregunto para que sirve",
		client = {
			image = "security_card_02.png",
		}
	},

	["weed_ak47_bud"] = {
		label = "Cogollo AK47 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g AK47",
		client = {
			image = "budweed.png",
		}
	},

	["stingray"] = {
		label = "Mantarraya",
		weight = 100,
		stack = true,
		close = true,
		description = "Animal Marino Mantarraya",
		client = {
			image = "stingray.png",
		}
	},

	["axe_tool"] = {
		label = "Hacha de lenador",
		weight = 500,
		stack = false,
		close = false,
		description = "Hacha de un leñador con la cual podrás conseguir muchos tipos de madera",
		client = {
			image = "axe_tool.png",
		}
	},

	["weed_power-kush_seed"] = {
		label = "Power Kush Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Power Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_zombie-kush"] = {
		label = "Zombie Kush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Zombie Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["uwuroseessence"] = {
		label = "Rose Essence",
		weight = 200,
		stack = true,
		close = true,
		description = "Essence from the Rose Gods.",
		client = {
			image = "uwuroseessence.png",
		}
	},

	["electronickit"] = {
		label = "Kit de electronica",
		weight = 100,
		stack = true,
		close = true,
		description = "Si siempre ha querido construir un robot, tal vez pueda comenzar aquí. ¿Quizás seas el nuevo Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["camera"] = {
		label = "Camara",
		weight = 120,
		stack = true,
		close = true,
		description = "Camara canon de alta calidad, lista para tus fotos",
		client = {
			image = "camera.png",
		}
	},

	["pisto"] = {
		label = "Pisto",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Pisto",
		client = {
			image = "pisto.png",
		}
	},

	["handcuffs"] = {
		label = "Esposas",
		weight = 100,
		stack = true,
		close = true,
		description = "Es útil cuando la gente se porta mal. ¿Quizás pueda servir para algo más?",
		client = {
			image = "handcuffs.png",
		}
	},

	["turquese_necklace"] = {
		label = "Colgante de turquesa",
		weight = 50,
		stack = true,
		close = true,
		description = "Un colgante de turquesa",
		client = {
			image = "turquese_neck.png",
		}
	},

	["fabada"] = {
		label = "Fabada",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Fabada",
		client = {
			image = "plate_4.png",
		}
	},

	["sim"] = {
		label = "Tarjeta Sim",
		weight = 50,
		stack = true,
		close = false,
		description = "Una vez usada en el F5 tienes que instalarla",
		client = {
			image = "sim.png",
		}
	},

	["driver_license"] = {
		label = "Licencia de conducir",
		weight = 0,
		stack = false,
		close = false,
		description = "Permiso para demostrar que puede conducir un vehículo",
		client = {
			image = "driver_license.png",
		}
	},

	["condones"] = {
		label = "Caja de Condones",
		weight = 120,
		stack = true,
		close = true,
		description = "Funda muy fina y elástica, hecha de látex u otra materia similar, con que se cubre el pene al realizar el coito",
		client = {
			image = "condones.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Tablet bastante cara",
		client = {
			image = "tablet.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Telefono muy caro",
		client = {
			image = "iphone.png",
		}
	},

	["weed_strawberry-banana_seed"] = {
		label = "Strawberry Banana Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Strawberry Banana",
		client = {
			image = "weed_seed.png",
		}
	},

	["oil"] = {
		label = "Aceite de motor",
		weight = 100,
		stack = true,
		close = true,
		description = "Aceite de motor",
		client = {
			image = "oil.png",
		}
	},

	["mining_goldnugget"] = {
		label = "Nugget dorado",
		weight = 500,
		stack = true,
		close = true,
		description = "Pepita de oro de la minería",
		client = {
			image = "mining_goldnugget.png",
		}
	},

	["laptop"] = {
		label = "Portatil",
		weight = 4000,
		stack = true,
		close = true,
		description = "Portátil bastante caro",
		client = {
			image = "laptop.png",
		}
	},

	["fishbait"] = {
		label = "Carnada de Pez",
		weight = 100,
		stack = true,
		close = true,
		description = "Carnada de Pez",
		client = {
			image = "fishbait.png",
		}
	},

	["air_filter"] = {
		label = "Filtro de aire",
		weight = 100,
		stack = true,
		close = true,
		description = "Filtros de aire",
		client = {
			image = "air_filter.png",
		}
	},

	["cokebaggy"] = {
		label = "Bolsa de Cocaina 2G",
		weight = 200,
		stack = true,
		close = true,
		description = "Para ser feliz muy rápido",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["tarjeta_import"] = {
		label = "Tarjeta Importación",
		weight = 100,
		stack = true,
		close = true,
		description = "Tarjeta de Acceso Importación Vip!",
		client = {
			image = "tarjeta_import.png",
		}
	},

	["esmerald_ring"] = {
		label = "Anillo de emperalda",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de emperalda",
		client = {
			image = "esmerald_ring.png",
		}
	},

	["harness"] = {
		label = "Arnés de Carrera",
		weight = 1000,
		stack = false,
		close = true,
		description = "Arnés de carreras para que no importa lo que te quedes en el coche",
		client = {
			image = "harness.png",
		}
	},

	["boombox"] = {
		label = "Radio Portatil",
		weight = 2000,
		stack = false,
		close = true,
		description = "Puedes escuchar música en cualquiera parte!",
		client = {
			image = "boombox.png",
		}
	},

	["tacos"] = {
		label = "Tacos Mexicanos",
		weight = 250,
		stack = true,
		close = true,
		description = "Tacos Mexicanos",
		client = {
			image = "taco.png",
		}
	},

	["diving_gear"] = {
		label = "Bombona de Oxigeno",
		weight = 30000,
		stack = false,
		close = true,
		description = "Equipo de buceo, sumérgete en los mares...",
		client = {
			image = "diving_gear.png",
		}
	},

	["diamond_ring"] = {
		label = "Anillo de diamante",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de diamante",
		client = {
			image = "diamond_ring.png",
		}
	},

	["mining_stone"] = {
		label = "piedra minada",
		weight = 500,
		stack = true,
		close = true,
		description = "piedra minada",
		client = {
			image = "mining_stone.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Bolsa de Evidencias",
		weight = 200,
		stack = false,
		close = false,
		description = "Una bolsa de evidencia llena para ver quién cometió el crimen.",
		client = {
			image = "evidence.png",
		}
	},

	["vehiclekey"] = {
		label = "Vehicle Key",
		weight = 0,
		stack = false,
		close = false,
		description = "This is a car key, take good care of it, if you lose it you probably won't be able to use your car",
		client = {
			image = "carkeys.png",
		}
	},

	["bass"] = {
		label = "Pez Lubina",
		weight = 100,
		stack = true,
		close = true,
		description = "Animal Marino Bass",
		client = {
			image = "bass.png",
		}
	},

	["cnshot"] = {
		label = "[Servir] Chuck Norris",
		weight = 300,
		stack = true,
		close = false,
		description = "Ten cuidado con el Chuck Norris...",
		client = {
			image = "cnshot.png",
		}
	},

	["hotdog"] = {
		label = "Hotdog",
		weight = 150,
		stack = true,
		close = true,
		description = "Hotdog",
		client = {
			image = "hotdog.png",
		}
	},

	["tuna"] = {
		label = "Blue Fin Tuna",
		weight = 300,
		stack = true,
		close = true,
		description = "Blue Fin Tuna - cooking ingredient",
		client = {
			image = "tuna.png",
		}
	},

	["harina"] = {
		label = "Paquete de Harina",
		weight = 100,
		stack = true,
		close = false,
		description = "Paquete de Harina para cocinar",
		client = {
			image = "harina.png",
		}
	},

	["patata"] = {
		label = "Patatas Fritas",
		weight = 200,
		stack = true,
		close = true,
		description = "Patatas Fritas",
		client = {
			image = "bsfries.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "vodka.png",
		}
	},

	["springs"] = {
		label = "Muelles de suspensión",
		weight = 100,
		stack = true,
		close = true,
		description = "Muelles de suspensión",
		client = {
			image = "springs.png",
		}
	},

	["plate_3"] = {
		label = "[Servir] Burrito",
		weight = 200,
		stack = true,
		close = true,
		description = "Un buen burrito bien calentito",
		client = {
			image = "plate_3.png",
		}
	},

	["mining_ironfragment"] = {
		label = "Fragmento de hierro",
		weight = 500,
		stack = true,
		close = true,
		description = "Fragmento de hierro de la minería",
		client = {
			image = "mining_ironfragment.png",
		}
	},

	["scrap_metal"] = {
		label = "Chatarra para coches",
		weight = 100,
		stack = true,
		close = false,
		description = "Material para coches",
		client = {
			image = "scrap_metal.png",
		}
	},

	["weed_godfather_seed"] = {
		label = "Godfather Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Godfather",
		client = {
			image = "weed_seed.png",
		}
	},

	["cambio_ropa"] = {
		label = "Cambio de Ropa",
		weight = 100,
		stack = true,
		close = true,
		description = "Cambiate de ropa en cualquier sitio",
		client = {
			image = "outfit.png",
		}
	},

	["weed_untrimmed"] = {
		label = "Hierba sin recortar",
		weight = 1000,
		stack = true,
		close = true,
		description = "Hierba de la mejor, lista para recortar.",
		client = {
			image = "weed_untrimmed.png",
		}
	},

	["fishingkey"] = {
		label = "Llave de Pesca",
		weight = 100,
		stack = true,
		close = true,
		description = "Llave de Pesca",
		client = {
			image = "fishingkey.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["gominolascbd"] = {
		label = "Gominolas CBD",
		weight = 100,
		stack = true,
		close = true,
		description = "Gominolas CBD",
		client = {
			image = "gominolascbd.png",
		}
	},

	["uwububbleteablueberry"] = {
		label = "Berry Blue B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Lavender Tea with Blueberry Boba.",
		client = {
			image = "uwububbleteablueberry.png",
		}
	},

	["jacinth_necklace"] = {
		label = "Colgante de jacinto",
		weight = 50,
		stack = true,
		close = true,
		description = "Un colgante de jacinto",
		client = {
			image = "jacinth_neck.png",
		}
	},

	["mixedlettuce"] = {
		label = "Mixed Lettuce",
		weight = 250,
		stack = true,
		close = true,
		description = "Crispy assortment of mixed lettuce",
		client = {
			image = "mixedlettuce.png",
		}
	},

	["shot"] = {
		label = "[Servir] Tequila",
		weight = 500,
		stack = true,
		close = true,
		description = "Nada como un buen shot de tequila",
		client = {
			image = "shot.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_melon-kush_bud"] = {
		label = "Cogollo Melon Kush 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Melon Kush Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["transmission_oil"] = {
		label = "Aceite de transmisión",
		weight = 100,
		stack = true,
		close = true,
		description = "Aceite de transmisión",
		client = {
			image = "transmission_oil.png",
		}
	},

	["gym_membership"] = {
		label = "Carnet del GYM",
		weight = 0,
		stack = true,
		close = false,
		description = "La tarjeta con la que puedes ponerte en forma fisicamente",
		client = {
			image = "gym_membership.png",
		}
	},

	["copper"] = {
		label = "Cobre",
		weight = 100,
		stack = true,
		close = false,
		description = "Bonita pieza de metal que probablemente puedas usar para algo",
		client = {
			image = "copper.png",
		}
	},

	["cocido"] = {
		label = "Cocido de Verduras",
		weight = 250,
		stack = true,
		close = true,
		description = "Plato de Cocido",
		client = {
			image = "verduras_2.png",
		}
	},

	["hongos"] = {
		label = "Hongos",
		weight = 100,
		stack = true,
		close = false,
		description = "Hongos alucinógenos",
		client = {
			image = "hongos.png",
		}
	},

	["alitas"] = {
		label = "Alitas de Pollo",
		weight = 250,
		stack = true,
		close = true,
		description = "Alitas de Pollo",
		client = {
			image = "alitaspollo.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "Una tarjeta de seguridad... me pregunto para que sirve",
		client = {
			image = "security_card_01.png",
		}
	},

	["car_trunk"] = {
		label = "Maletero de coche",
		weight = 100,
		stack = true,
		close = true,
		description = "Puerta de maletero de un vehículo",
		client = {
			image = "car_trunk.png",
		}
	},

	["metalscrap"] = {
		label = "Chatarra",
		weight = 100,
		stack = true,
		close = false,
		description = "Probablemente puedas hacer algo bueno con esto",
		client = {
			image = "metalscrap.png",
		}
	},

	["goldchain"] = {
		label = "Cadena de Oro",
		weight = 1500,
		stack = true,
		close = true,
		description = "¡Una cadena de oro me parece el premio gordo!",
		client = {
			image = "goldchain.png",
		}
	},

	["brake_caliper"] = {
		label = "Pinza de freno",
		weight = 100,
		stack = true,
		close = true,
		description = "Pinza de freno",
		client = {
			image = "brake_caliper.png",
		}
	},

	["coke_brick"] = {
		label = "Paquete de Cocaina",
		weight = 1000,
		stack = false,
		close = true,
		description = "Paquete pesado de cocaína, utilizado principalmente para ofertas y ocupa mucho espacio",
		client = {
			image = "coke_brick.png",
		}
	},

	["rice"] = {
		label = "Rice",
		weight = 200,
		stack = true,
		close = true,
		description = "Rice - cooking ingredient",
		client = {
			image = "rice.png",
		}
	},

	["yatekomo"] = {
		label = "Yatekomo",
		weight = 50,
		stack = true,
		close = true,
		description = "Yatekomo",
		client = {
			image = "yatekomo.png",
		}
	},

	["solomillo"] = {
		label = "Solomillo con Salsa",
		weight = 250,
		stack = true,
		close = true,
		description = "Plato de Solomillo Con Salsa",
		client = {
			image = "bistec.png",
		}
	},

	["uwu_toy1"] = {
		label = "uWu Blitz",
		weight = 50,
		stack = true,
		close = false,
		description = "Blitz ",
		client = {
			image = "uwu_toy1.png",
		}
	},

	["mining_pan"] = {
		label = "Pan de lavado",
		weight = 500,
		stack = false,
		close = true,
		description = "Clasico's sartén",
		client = {
			image = "mining_pan.png",
		}
	},

	["weed_melon-kush"] = {
		label = "Melon Kush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Melon Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_melon-kush_seed"] = {
		label = "Melon Kush Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Melon Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["salsa"] = {
		label = "Salsa",
		weight = 50,
		stack = true,
		close = false,
		description = "Salsa para cocinar",
		client = {
			image = "salsas.png",
		}
	},

	["rwd"] = {
		label = "Transmisión RWD",
		weight = 100,
		stack = true,
		close = true,
		description = "Transmisión RWD",
		client = {
			image = "rwd.png",
		}
	},

	["labkey"] = {
		label = "Llave",
		weight = 500,
		stack = false,
		close = true,
		description = "Llave es un instrumento que se usa para accionar cerraduras",
		client = {
			image = "labkey.png",
		}
	},

	["spark_plugs"] = {
		label = "Bujías",
		weight = 100,
		stack = true,
		close = true,
		description = "Dispositivo de un motor de combustión interna donde se produce la chispa eléctrica que inflama la mezcla explosiva comprimida",
		client = {
			image = "spark_plugs.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "La etiqueta ha sido arrancada",
		client = {
			image = "oxy.png",
		}
	},

	["awd"] = {
		label = "Transmisión AWD",
		weight = 100,
		stack = true,
		close = true,
		description = "Transmisión AWD",
		client = {
			image = "awd.png",
		}
	},

	["car_key"] = {
		label = "Llave de vehículo",
		weight = 10,
		stack = false,
		close = false,
		description = "La llave de un vehículo",
		client = {
			image = "car_key.png",
		}
	},

	["uwububbleteamint"] = {
		label = "Minty B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Matcha Tea with Mint Boba.",
		client = {
			image = "uwububbleteamint.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Semilla",
		weight = 50,
		stack = true,
		close = false,
		description = "Una semilla de hierba White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["fishingboot"] = {
		label = "Bota Vieja",
		weight = 100,
		stack = true,
		close = true,
		description = "Bota Vieja",
		client = {
			image = "fishingboot.png",
		}
	},

	["weed_godfather_bud"] = {
		label = "Cogollo Godfather 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Godfather Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["rolex"] = {
		label = "Reloj de Oro",
		weight = 1500,
		stack = true,
		close = true,
		description = "¡Un reloj de oro me parece el premio gordo!",
		client = {
			image = "rolex.png",
		}
	},

	["tunerlaptop"] = {
		label = "Centralita",
		weight = 2000,
		stack = false,
		close = true,
		description = "Con este escaner puedes poner tu coche en esteroides... Si sabes lo que estás haciendo",
		client = {
			image = "tunerchip.png",
		}
	},

	["skateboard"] = {
		label = "Skate",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard.png",
		}
	},

	["car_hood"] = {
		label = "Capó de coche",
		weight = 100,
		stack = true,
		close = true,
		description = "Puerta lateral de un vehículo",
		client = {
			image = "car_hood.png",
		}
	},

	["radioscanner"] = {
		label = "Radio scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "Con esto puedes obtener algunas alertas policiales. Sin embargo, no es 100% efectivo",
		client = {
			image = "radioscanner.png",
		}
	},

	["plantpot"] = {
		label = "Maceta",
		weight = 500,
		stack = true,
		close = true,
		description = "Maceta",
		client = {
			image = "plantpot.png",
		}
	},

	["scratch_ticket"] = {
		label = "Rasca y Gana",
		weight = 100,
		stack = true,
		close = true,
		description = "Prueba suerte y gana dinero!",
		client = {
			image = "scratch_ticket.png",
		}
	},

	["id_card"] = {
		label = "Tarjeta de identificación",
		weight = 0,
		stack = false,
		close = false,
		description = "Una tarjeta que contiene todos tus datos para identificarte",
		client = {
			image = "id_card.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snickers",
		weight = 100,
		stack = true,
		close = true,
		description = "Unos deliciosos dulces :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["ensaimada"] = {
		label = "Ensaimada",
		weight = 50,
		stack = true,
		close = true,
		description = "Ensaimada",
		client = {
			image = "ensaimada.png",
		}
	},

	["herbshot"] = {
		label = "[Servir] Licor Hierbas",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh que rico, licor de hierbas",
		client = {
			image = "herbshot.png",
		}
	},

	["browniecbd"] = {
		label = "Brownie CBD",
		weight = 100,
		stack = true,
		close = true,
		description = "Brownie CBD",
		client = {
			image = "browniecbd.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Coral Blanco",
		weight = 1000,
		stack = true,
		close = true,
		description = "Corales Blancos...",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["weed_purple-haze_bud"] = {
		label = "Cogollo Purple Haze 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Purple Haze",
		client = {
			image = "budweed.png",
		}
	},

	["plate_4"] = {
		label = "[Servir] Lentejas",
		weight = 200,
		stack = true,
		close = true,
		description = "Nada mas rico que las lentejas de la abuela",
		client = {
			image = "plate_4.png",
		}
	},

	["fuel_filter"] = {
		label = "Filtro de combustible",
		weight = 100,
		stack = true,
		close = true,
		description = "Filtro de combustible",
		client = {
			image = "fuel_filter.png",
		}
	},

	["noodle_box"] = {
		label = "[Servir] Fidéos Chinos",
		weight = 200,
		stack = true,
		close = true,
		description = "Unos buenos fideitos chinos",
		client = {
			image = "noodle_box.png",
		}
	},

	["fwd"] = {
		label = "Transmisión FWD",
		weight = 100,
		stack = true,
		close = true,
		description = "Transmisión FWD",
		client = {
			image = "fwd.png",
		}
	},

	["coffeetogo"] = {
		label = "Café",
		weight = 100,
		stack = true,
		close = true,
		description = "Café",
		client = {
			image = "coffeetogo.png",
		}
	},

	["water_bottle"] = {
		label = "Botella de Agua",
		weight = 500,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "water_bottle.png",
		}
	},

	["weed_brick"] = {
		label = "Bloque de Marihuana",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ladrillo de hierba de 1KG para vender a grandes clientes",
		client = {
			image = "weed_brick.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["semislick"] = {
		label = "Neumáticos semislicks",
		weight = 100,
		stack = true,
		close = true,
		description = "Neumáticos semislicks",
		client = {
			image = "semislick.png",
		}
	},

	["walkstick"] = {
		label = "Baston",
		weight = 1000,
		stack = true,
		close = true,
		description = "Bastón para las abuelitas que hay por ahí... JAJA",
		client = {
			image = "walkstick.png",
		}
	},

	["misopaste"] = {
		label = "Miso Paste",
		weight = 200,
		stack = true,
		close = true,
		description = "Miso Paste - cooking ingredient",
		client = {
			image = "misopaste.png",
		}
	},

	["markedbills"] = {
		label = "Dinero Marcado",
		weight = 1000,
		stack = false,
		close = true,
		description = "Dinero?",
		client = {
			image = "markedbills.png",
		}
	},

	["clutch"] = {
		label = "Embrague",
		weight = 100,
		stack = true,
		close = true,
		description = "Embrague",
		client = {
			image = "clutch.png",
		}
	},

	["advancedlockpick"] = {
		label = "Ganzúa avanzada",
		weight = 500,
		stack = true,
		close = true,
		description = "Si pierdes mucho tus llaves esto es muy útil... También útil para abrir tus cervezas",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["fitbit"] = {
		label = "Reloj Fitness",
		weight = 500,
		stack = false,
		close = true,
		description = "Reloj Fitness",
		client = {
			image = "fitbit.png",
		}
	},

	["uwubbessence"] = {
		label = "BerryBlue Essence",
		weight = 200,
		stack = true,
		close = true,
		description = "Essence from the Blueberry Gods.",
		client = {
			image = "uwubbessence.png",
		}
	},

	["cocaine_bag"] = {
		label = "Bolsa de cocaína",
		weight = 1000,
		stack = true,
		close = false,
		description = "Bolsa de Cocaína que puedes vender.",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["skateboard5"] = {
		label = "Skate 5",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard5.png",
		}
	},

	["susp3"] = {
		label = "Suspensión cómoda",
		weight = 100,
		stack = true,
		close = true,
		description = "Suspensión cómoda",
		client = {
			image = "susp3.png",
		}
	},

	["gold_necklace"] = {
		label = "Colgante de oro",
		weight = 50,
		stack = true,
		close = true,
		description = "Un colgante de oro",
		client = {
			image = "silver_necklace.png",
		}
	},

	["panrallado"] = {
		label = "Paquete de Pan Rallado",
		weight = 50,
		stack = true,
		close = false,
		description = "Paquete de Pan Rallado para cocinar",
		client = {
			image = "pan_rallado.png",
		}
	},

	["coke1g"] = {
		label = "Bolsa de Cocaina",
		weight = 1000,
		stack = true,
		close = true,
		description = "Bolsa de cocaina, lista para vender.",
		client = {
			image = "coke1g.png",
		}
	},

	["race_brakes"] = {
		label = "Frenos de competición",
		weight = 100,
		stack = true,
		close = true,
		description = "Frenos de competición",
		client = {
			image = "race_brakes.png",
		}
	},

	["jointthc"] = {
		label = "Porro de THC",
		weight = 200,
		stack = true,
		close = true,
		description = "Porro de THC",
		client = {
			image = "jointthc.png",
		}
	},

	["embutido"] = {
		label = "Paquete de Embutidos",
		weight = 35,
		stack = true,
		close = false,
		description = "Paquete de Embutido para cocinar",
		client = {
			image = "embutidos.png",
		}
	},

	["spray_remover"] = {
		label = "Spray Remover",
		weight = 500,
		stack = true,
		close = true,
		description = "Limpia los grafitis de la ciudad",
		client = {
			image = "spray_remover.png",
		}
	},

	["weed_critical-kush"] = {
		label = "Critical Kush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Critical Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 200,
		stack = true,
		close = true,
		description = "Milk",
		client = {
			image = "milkcarton.png",
		}
	},

	["skateboard4"] = {
		label = "Skate 4",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard4.png",
		}
	},

	["stickynote"] = {
		label = "Nota Adhesiva",
		weight = 0,
		stack = false,
		close = false,
		description = "A veces es útil recordar algo :)",
		client = {
			image = "stickynote.png",
		}
	},

	["chocolatinacbd"] = {
		label = "Chocolatina CBD",
		weight = 100,
		stack = true,
		close = true,
		description = "Chocolatina CBD",
		client = {
			image = "chocolatinacbd.png",
		}
	},

	["carjack"] = {
		label = "Gato Hidraulico",
		weight = 100,
		stack = true,
		close = true,
		description = "Sive para elevar un vehículo",
		client = {
			image = "carjack.png",
		}
	},

	["serpentine_belt"] = {
		label = "Correa de serpentina",
		weight = 100,
		stack = true,
		close = true,
		description = "Correa de serpentina",
		client = {
			image = "serpentine_belt.png",
		}
	},

	["ringglod"] = {
		label = "Anillo de oro",
		weight = 50,
		stack = false,
		close = true,
		description = "Un anillo de oro",
		client = {
			image = "anillodemon.png",
		}
	},

	["armor"] = {
		label = "Chaleco Antibalas",
		weight = 5000,
		stack = true,
		close = true,
		description = "Un poco de protección no hará daño... ¿verdad?",
		client = {
			image = "armor.png",
		}
	},

	["ifaks"] = {
		label = "Antidepresivos",
		weight = 200,
		stack = true,
		close = true,
		description = "Antidepresivos para la curación y un completo eliminador de estrés",
		client = {
			image = "ifaks.png",
		}
	},

	["peixe_pesca"] = {
		label = "Fish",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fish.png",
		}
	},

	["meth"] = {
		label = "Metanfetamina",
		weight = 1000,
		stack = true,
		close = true,
		description = "Metanfetamina lista para embolsar.",
		client = {
			image = "meth.png",
		}
	},

	["weed_chemdawg_bud"] = {
		label = "Cogollo Chem Dawg 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Chem Dawg Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["fishicebox"] = {
		label = "Caja de Pescados",
		weight = 100,
		stack = true,
		close = true,
		description = "Ancla para barcos",
		client = {
			image = "fishicebox.png",
		}
	},

	["fishtacklebox"] = {
		label = "Caja de Pesca",
		weight = 100,
		stack = true,
		close = true,
		description = "Caja de Pesca",
		client = {
			image = "fishtacklebox.png",
		}
	},

	["hamburguesa"] = {
		label = "Hamburguesa",
		weight = 150,
		stack = true,
		close = true,
		description = "Hamburguesa de Pollo",
		client = {
			image = "burguer.png",
		}
	},

	["brake_discs"] = {
		label = "Discos de freno",
		weight = 100,
		stack = true,
		close = true,
		description = "Discos de freno",
		client = {
			image = "brake_discs.png",
		}
	},

	["empanada2"] = {
		label = "Empanada de Pollo",
		weight = 250,
		stack = true,
		close = true,
		description = "Empanada de Pollo",
		client = {
			image = "empanada_pollo.png",
		}
	},

	["sharktiger"] = {
		label = "Tiburón Tigre",
		weight = 100,
		stack = true,
		close = true,
		description = "Tiburón Tigre",
		client = {
			image = "sharktiger.png",
		}
	},

	["sprunk_serve"] = {
		label = "[Servir] Sprunk",
		weight = 500,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "sprunk_serve.png",
		}
	},

	["rubber"] = {
		label = "Goma",
		weight = 100,
		stack = true,
		close = false,
		description = "Goma, creo que puedes hacer tu propio patito de goma con ella :D",
		client = {
			image = "rubber.png",
		}
	},

	["mining_pickaxe"] = {
		label = "Pico minero",
		weight = 500,
		stack = false,
		close = true,
		description = "Clasico's pico para minería",
		client = {
			image = "mining_pickaxe.png",
		}
	},

	["steel"] = {
		label = "Acero",
		weight = 100,
		stack = true,
		close = false,
		description = "Bonita pieza de metal que probablemente puedas usar para algo",
		client = {
			image = "steel.png",
		}
	},

	["esmerald_necklace"] = {
		label = "Colgante de esmeralda",
		weight = 50,
		stack = true,
		close = true,
		description = "Un colgante de esmeralda",
		client = {
			image = "esmerald_neck.png",
		}
	},

	["flounder"] = {
		label = "Pez Plantija",
		weight = 100,
		stack = true,
		close = true,
		description = "Animal Marino Pez Plantija",
		client = {
			image = "flounder.png",
		}
	},

	["wellington_watch"] = {
		label = "Reloj Wellington",
		weight = 50,
		stack = true,
		close = true,
		description = "Un reloj",
		client = {
			image = "goldwatch.png",
		}
	},

	["plate_2"] = {
		label = "[Servir] Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Una pizza del sabor que mas te guste",
		client = {
			image = "plate_2.png",
		}
	},

	["crack_baggy"] = {
		label = "Bolsa de Crack 2g",
		weight = 0,
		stack = true,
		close = true,
		description = "Para ser feliz mas rapido",
		client = {
			image = "crack_baggy.png",
		}
	},

	["tortilla"] = {
		label = "Tortilla Patatas",
		weight = 250,
		stack = true,
		close = true,
		description = "Tortilla Patatas",
		client = {
			image = "tortilla.png",
		}
	},

	["pure"] = {
		label = "Pure de Patatas",
		weight = 200,
		stack = true,
		close = true,
		description = "Plato de Pure de Patatas",
		client = {
			image = "purepatatas.png",
		}
	},

	["rawsugar"] = {
		label = "Raw Sugar",
		weight = 200,
		stack = true,
		close = true,
		description = "Raw Sugar - cooking ingredient",
		client = {
			image = "rawsugar.png",
		}
	},

	["jacinth_ring"] = {
		label = "Anillo de jacinto",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de jacinto",
		client = {
			image = "jacinth_ring.png",
		}
	},

	["dopebag"] = {
		label = "Bolsa de plastico",
		weight = 1000,
		stack = true,
		close = true,
		description = "Esta bolsa sirve para guardar cosas, o empaquetar cositas..",
		client = {
			image = "dopebag.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "Para todos los sedientos que hay",
		client = {
			image = "cola.png",
		}
	},

	["pine_wood"] = {
		label = "Troncos de Madera",
		weight = 1000,
		stack = true,
		close = true,
		description = "Tronco de Pino, una madera muy resistente",
		client = {
			image = "pine_wood.png",
		}
	},

	["pato"] = {
		label = "Pato a la Pekinesa",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Pato a la Pekinesa",
		client = {
			image = "pato_pekinesa.png",
		}
	},

	["pearlscard"] = {
		label = "Tarjeta de Pesca",
		weight = 100,
		stack = true,
		close = true,
		description = "Tarjeta de Pesca",
		client = {
			image = "pearlscard.png",
		}
	},

	["coffeecbd"] = {
		label = "Café CBD",
		weight = 100,
		stack = true,
		close = true,
		description = "Café CBD",
		client = {
			image = "coffeecbd.png",
		}
	},

	["oak_wood"] = {
		label = "Tablas de Madera",
		weight = 500,
		stack = true,
		close = true,
		description = "Tablas de madera",
		client = {
			image = "oak_wood.png",
		}
	},

	["vanillabean"] = {
		label = "Vanilla Bean",
		weight = 200,
		stack = true,
		close = true,
		description = "Vanilla Bean - cooking ingredient",
		client = {
			image = "vanillabean.png",
		}
	},

	["casinochips"] = {
		label = "Fichas de casino",
		weight = 0,
		stack = true,
		close = false,
		description = "Fichas para Juegos de Casino",
		client = {
			image = "casinochips.png",
		}
	},

	["mining_washedstone"] = {
		label = "piedra lavada",
		weight = 500,
		stack = true,
		close = true,
		description = "Piedra desperdiciada",
		client = {
			image = "mining_washedstone.png",
		}
	},

	["screwdriverset"] = {
		label = "Kit de herramientas",
		weight = 1000,
		stack = true,
		close = false,
		description = "Muy útil para atornillar... tornillos...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["scanner"] = {
		label = "Escaner",
		weight = 100,
		stack = true,
		close = true,
		description = "Escaner",
		client = {
			image = "scanner.png",
		}
	},

	["dolphin"] = {
		label = "Delfín",
		weight = 100,
		stack = true,
		close = true,
		description = "Delfín Marino",
		client = {
			image = "dolphin.png",
		}
	},

	["methbrick"] = {
		label = "Ladrillo de Metanfetamina",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ladrillo de meta, listo para volver polvo.",
		client = {
			image = "methbrick.png",
		}
	},

	["arroz2"] = {
		label = "Arroz con Curry",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Arroz Con Curry",
		client = {
			image = "pollo_curry.png",
		}
	},

	["uwucupcake"] = {
		label = "uWu Cupcake",
		weight = 200,
		stack = true,
		close = true,
		description = "Sugar Kitty Cupcake!",
		client = {
			image = "uwucupcake.png",
		}
	},

	["uwubentobox"] = {
		label = "^=◕ᴥ◕=^ Bento Box",
		weight = 225,
		stack = true,
		close = true,
		description = "A ◕ᴥ◕ Selection with a surprise!",
		client = {
			image = "uwubentobox.png",
		}
	},

	["fert"] = {
		label = "Fertilizante",
		weight = 250,
		stack = true,
		close = true,
		description = "Fertilizante",
		client = {
			image = "fert.png",
		}
	},

	["snack4"] = {
		label = "Paquete de Patatas",
		weight = 100,
		stack = true,
		close = true,
		description = "Paquete de Patatas con queso",
		client = {
			image = "snack4.png",
		}
	},

	["lentejas"] = {
		label = "Lentejas",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Lentejas",
		client = {
			image = "lentejas.png",
		}
	},

	["uwusushi"] = {
		label = "uWu Sushi",
		weight = 200,
		stack = true,
		close = true,
		description = "Designed as a window to your soul.",
		client = {
			image = "uwusushi.png",
		}
	},

	["grapejuice"] = {
		label = "Zumo de Uva",
		weight = 200,
		stack = true,
		close = false,
		description = "Se dice que el zumo de uva es saludable",
		client = {
			image = "grapejuice.png",
		}
	},

	["weed_chemdawg"] = {
		label = "Chem Dawg 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Chem Dawg",
		client = {
			image = "weed_baggy.png",
		}
	},

	["silver_necklace"] = {
		label = "Colgante de plata",
		weight = 50,
		stack = true,
		close = true,
		description = "Un colgante de plata",
		client = {
			image = "gold_necklace.png",
		}
	},

	["tapiokaballs"] = {
		label = "Tapioka Balls",
		weight = 200,
		stack = true,
		close = true,
		description = "Tapioka Balls ingredient for Bubble Tea!",
		client = {
			image = "tapiokaballs.png",
		}
	},

	["anchor"] = {
		label = "Ancla",
		weight = 100,
		stack = true,
		close = true,
		description = "Ancla para barcos",
		client = {
			image = "anchor.png",
		}
	},

	["weed_zombie-kush_seed"] = {
		label = "Zombie Kush Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Zombie Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["drill"] = {
		label = "Taladro",
		weight = 20000,
		stack = true,
		close = false,
		description = "El acuerdo real...",
		client = {
			image = "drill.png",
		}
	},

	["susp1"] = {
		label = "Suspensión baja",
		weight = 100,
		stack = true,
		close = true,
		description = "Suspensión baja",
		client = {
			image = "susp1.png",
		}
	},

	["plate_1"] = {
		label = "[Servir] Guarnición",
		weight = 100,
		stack = true,
		close = true,
		description = "Un buen acompañamiento para tus platos",
		client = {
			image = "plate_1.png",
		}
	},

	["binoculars"] = {
		label = "Prismáticos",
		weight = 600,
		stack = true,
		close = true,
		description = "Son un instrumento óptico usado para ampliar la imagen de los objetos distantes",
		client = {
			image = "binoculars.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bolsa de Extasis",
		weight = 100,
		stack = true,
		close = true,
		description = "Bolsita de pastillas muy ricas",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["weed_power-kush"] = {
		label = "Power Kush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Power Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["especias"] = {
		label = "Especias",
		weight = 50,
		stack = true,
		close = false,
		description = "Bote de Especias para cocinar",
		client = {
			image = "especias.png",
		}
	},

	["weed_nutrition"] = {
		label = "Fertilizante",
		weight = 2000,
		stack = true,
		close = true,
		description = "Nutrición vegetal",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["killerwhale"] = {
		label = "Orca Marina",
		weight = 100,
		stack = true,
		close = true,
		description = "Orca Marina",
		client = {
			image = "killerwhale.png",
		}
	},

	["pasta"] = {
		label = "Paquete de Pasta",
		weight = 100,
		stack = true,
		close = false,
		description = "Paquete de Pasta para cocinar",
		client = {
			image = "pasta.png",
		}
	},

	["gear"] = {
		label = "Engranaje de transmisión",
		weight = 100,
		stack = true,
		close = true,
		description = "Engranaje de transmisión",
		client = {
			image = "gear.png",
		}
	},

	["uwubudhabowl"] = {
		label = "uWu Budha Bowl",
		weight = 200,
		stack = true,
		close = true,
		description = "Bowl of nourishment and balance.",
		client = {
			image = "uwubudhabowl.png",
		}
	},

	["kebab"] = {
		label = "Kebab",
		weight = 100,
		stack = true,
		close = true,
		description = "Kebab de Pollo",
		client = {
			image = "kebab.png",
		}
	},

	["mining_ironbar"] = {
		label = "Barra de acero",
		weight = 500,
		stack = true,
		close = true,
		description = "Barra de acero",
		client = {
			image = "mining_ironbar.png",
		}
	},

	["lawyerpass"] = {
		label = "Pase de abogado",
		weight = 0,
		stack = false,
		close = false,
		description = "Pase exclusivo para abogados para demostrar que pueden representar a un sospechoso",
		client = {
			image = "lawyerpass.png",
		}
	},

	["aluminum"] = {
		label = "Aluminio",
		weight = 100,
		stack = true,
		close = false,
		description = "Bonita pieza de metal que probablemente puedas usar para algo",
		client = {
			image = "aluminum.png",
		}
	},

	["car_wheel"] = {
		label = "Rueda de coche",
		weight = 100,
		stack = true,
		close = true,
		description = "Ruedas de un vehículo",
		client = {
			image = "car_wheel.png",
		}
	},

	["pickaxe_tool"] = {
		label = "Pico de minero",
		weight = 500,
		stack = false,
		close = false,
		description = "Pico de un minero con el cual podrás conseguir minerales.",
		client = {
			image = "pickaxe_tool.png",
		}
	},

	["uwumisosoup"] = {
		label = "uWu Miso Soup",
		weight = 200,
		stack = true,
		close = true,
		description = "Fungus never tasted so good!",
		client = {
			image = "uwumisosoup.png",
		}
	},

	["uwu_toy3"] = {
		label = "uWu Citruz",
		weight = 50,
		stack = true,
		close = false,
		description = "Citruz ",
		client = {
			image = "uwu_toy3.png",
		}
	},

	["beer"] = {
		label = "Cerveza",
		weight = 500,
		stack = true,
		close = true,
		description = "¡Nada como una buena cerveza fría!",
		client = {
			image = "beer.png",
		}
	},

	["skateboard2"] = {
		label = "Skate 2",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard2.png",
		}
	},

	["susp"] = {
		label = "Suspensión muy baja",
		weight = 100,
		stack = true,
		close = true,
		description = "Suspensión muy baja",
		client = {
			image = "susp.png",
		}
	},

	["wine"] = {
		label = "Vino",
		weight = 300,
		stack = true,
		close = false,
		description = "Un buen vino para beber en una buena tarde.",
		client = {
			image = "wine.png",
		}
	},

	["glass"] = {
		label = "Vidrio",
		weight = 100,
		stack = true,
		close = false,
		description = "Es muy frágil, cuidado",
		client = {
			image = "glass.png",
		}
	},

	["cheese"] = {
		label = "Pizza Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Cheese for Cooking!",
		client = {
			image = "cheese.png",
		}
	},

	["ironoxide"] = {
		label = "Polvo de hierro",
		weight = 100,
		stack = true,
		close = false,
		description = "Un poco de polvo para mezclar",
		client = {
			image = "ironoxide.png",
		}
	},

	["visa"] = {
		label = "Tarjeta Visa",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa se puede utilizar a través de cajero automático",
		client = {
			image = "visacard.png",
		}
	},

	["sprunk"] = {
		label = "Sprunk",
		weight = 100,
		stack = true,
		close = true,
		description = "Sprunk",
		client = {
			image = "sprunk.png",
		}
	},

	["trojan_usb"] = {
		label = "USB para hackear",
		weight = 0,
		stack = true,
		close = true,
		description = "Software útil para apagar algunos sistemas",
		client = {
			image = "usb_device.png",
		}
	},

	["cigarro"] = {
		label = "Cigarro",
		weight = 10,
		stack = true,
		close = true,
		description = "Cigarros con tabaco de Guatemala",
		client = {
			image = "CIGARETTE.png",
		}
	},

	["turquese_ring"] = {
		label = "Anillo de turquesa",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de turquesa",
		client = {
			image = "turquese_ring.png",
		}
	},

	["whiskeyshot"] = {
		label = "[Servir] Whisky",
		weight = 500,
		stack = true,
		close = true,
		description = "Nada como un buen shot de whisky",
		client = {
			image = "whiskeyshot.png",
		}
	},

	["weed_godfather"] = {
		label = "Godfather 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g Godfather",
		client = {
			image = "weed_baggy.png",
		}
	},

	["purifiedwater"] = {
		label = "Agua Mineralizada",
		weight = 250,
		stack = true,
		close = true,
		description = "Agua Mineralizada",
		client = {
			image = "purifiedwater.png",
		}
	},

	["aluminium"] = {
		label = "Aluminio para coches",
		weight = 100,
		stack = true,
		close = false,
		description = "Material para coches",
		client = {
			image = "aluminium.png",
		}
	},

	["gold_ring"] = {
		label = "Anillo de oro",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de oro",
		client = {
			image = "gold_ring.png",
		}
	},

	["weed_skunk_bud"] = {
		label = "Cogollo Skunk 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Skunk",
		client = {
			image = "budweed.png",
		}
	},

	["weed_zombie-kush_bud"] = {
		label = "Cogollo Zombie Kush 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Zombie Kush Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["legumbre"] = {
		label = "Bote de Legumbres",
		weight = 100,
		stack = true,
		close = false,
		description = "Paquete de Legumbres para cocinar",
		client = {
			image = "legumbres.png",
		}
	},

	["huevos"] = {
		label = "Carton de Huevos",
		weight = 50,
		stack = true,
		close = false,
		description = "Carton de Huevos para cocinar",
		client = {
			image = "huevos.png",
		}
	},

	["iron"] = {
		label = "Hierro",
		weight = 100,
		stack = true,
		close = false,
		description = "Pieza práctica de metal que probablemente puedas usar para algo",
		client = {
			image = "iron.png",
		}
	},

	["weed_strawberry-banana_bud"] = {
		label = "Cogollo Strawberry Banana 1g",
		weight = 100,
		stack = true,
		close = false,
		description = "1g Strawberry Banana Hierba",
		client = {
			image = "budweed.png",
		}
	},

	["pan"] = {
		label = "Barra de Pan",
		weight = 50,
		stack = true,
		close = false,
		description = "Barra de Pan",
		client = {
			image = "pan.png",
		}
	},

	["bollycao"] = {
		label = "Bollycao",
		weight = 50,
		stack = true,
		close = true,
		description = "Bollycao de Chocolate",
		client = {
			image = "bollycao.png",
		}
	},

	["egg"] = {
		label = "Chicken Egg",
		weight = 200,
		stack = true,
		close = true,
		description = "Egg - cooking ingredient",
		client = {
			image = "egg.png",
		}
	},

	["mining_copperfragment"] = {
		label = "Fragmento de cobre",
		weight = 500,
		stack = true,
		close = true,
		description = "Fragmento de cobre de la minería",
		client = {
			image = "mining_copperfragment.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Los fuegos artificiales son un tipo de dispositivos pirotécnicos usados normalmente con fines estéticos",
		client = {
			image = "firework2.png",
		}
	},

	["susp4"] = {
		label = "Suspensión alta",
		weight = 100,
		stack = true,
		close = true,
		description = "Suspensión alta",
		client = {
			image = "susp4.png",
		}
	},

	["mango"] = {
		label = "Mango",
		weight = 300,
		stack = true,
		close = true,
		description = "Mango",
		client = {
			image = "mango.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["uwuchocsandy"] = {
		label = "uWu C-Icecream Sandy",
		weight = 200,
		stack = true,
		close = true,
		description = "Sweet Chocolate Biscuit filled with Icecreamy!",
		client = {
			image = "uwuchocsandy.png",
		}
	},

	["diamond"] = {
		label = "Diamante",
		weight = 100,
		stack = true,
		close = false,
		description = "Pieza de diamante muy valorada",
		client = {
			image = "diamond.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 200,
		stack = true,
		close = true,
		description = "Chocolate - cooking ingredient",
		client = {
			image = "chocolate.png",
		}
	},

	["sal"] = {
		label = "Bote de Sal",
		weight = 50,
		stack = true,
		close = false,
		description = "Bote de Sal para cocinar",
		client = {
			image = "sal.png",
		}
	},

	["croquettes"] = {
		label = "Pienso para animales",
		weight = 200,
		stack = true,
		close = true,
		description = "Pienso rico para tu mascota",
		client = {
			image = "croquettes.png",
		}
	},

	["grape"] = {
		label = "Uvas",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh que rico, uvas",
		client = {
			image = "grape.png",
		}
	},

	["skateboard3"] = {
		label = "Skate 3",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard3.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["aluminumoxide"] = {
		label = "Polvo de aluminio",
		weight = 100,
		stack = true,
		close = false,
		description = "Un poco de polvo para mezclar",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["firstaid"] = {
		label = "Botiquin",
		weight = 2500,
		stack = true,
		close = true,
		description = "Puede usar este botiquín de primeros auxilios para que las personas se recuperen",
		client = {
			image = "firstaid.png",
		}
	},

	["repairkit"] = {
		label = "Kit de Reparacion",
		weight = 2500,
		stack = true,
		close = true,
		description = "Una bonita caja de herramientas con cosas para reparar tu vehículo",
		client = {
			image = "repairkit.png",
		}
	},

	["snowball"] = {
		label = "Bola de Nieve",
		weight = 0,
		stack = true,
		close = true,
		description = "Debería haberla atrapado :D",
		client = {
			image = "snowball.png",
		}
	},

	["uwububbletearose"] = {
		label = "Rosey B-T",
		weight = 200,
		stack = true,
		close = true,
		description = "Sakura Rose Tea with Vanilla Boba.",
		client = {
			image = "uwububbletearose.png",
		}
	},

	["uwu_toy4"] = {
		label = "uWu Zoxy",
		weight = 50,
		stack = true,
		close = false,
		description = "Zoxy ",
		client = {
			image = "uwu_toy4.png",
		}
	},

	["cana_pesca"] = {
		label = "Caña de pescar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishingrod.png",
		}
	},

	["nitrous"] = {
		label = "Nitro",
		weight = 1000,
		stack = true,
		close = true,
		description = "¡Acelera, pisa el acelerador! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["uwuvanillasandy"] = {
		label = "uWu V-Icecream Sandy",
		weight = 200,
		stack = true,
		close = true,
		description = "Sweet Vanilla Biscuit filled with Icecreamy!",
		client = {
			image = "uwuvanillasandy.png",
		}
	},

	["heavyarmor"] = {
		label = "Chaleco Antibalas Pesado",
		weight = 5000,
		stack = true,
		close = true,
		description = "Un poco de protección no hará daño... ¿verdad?",
		client = {
			image = "armor.png",
		}
	},

	["garett"] = {
		label = "Turbo",
		weight = 100,
		stack = true,
		close = true,
		description = "Turbocompresor que aumenta su potencia.",
		client = {
			image = "garett.png",
		}
	},

	["weaponlicense"] = {
		label = "Licencia de armas",
		weight = 0,
		stack = false,
		close = true,
		description = "Licencia de armas",
		client = {
			image = "weapon_license.png",
		}
	},

	["nori"] = {
		label = "Nori Sheets",
		weight = 200,
		stack = true,
		close = true,
		description = "Gift from the Ocean, goes well with Rice",
		client = {
			image = "nori.png",
		}
	},

	["car_door"] = {
		label = "Puerta de coche",
		weight = 100,
		stack = true,
		close = true,
		description = "Puerta lateral de un vehículo",
		client = {
			image = "car_door.png",
		}
	},

	["weed_chemdawg_seed"] = {
		label = "Chem Dawg Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba Chem Dawg",
		client = {
			image = "weed_seed.png",
		}
	},

	["silver_ring"] = {
		label = "Anillo de plata",
		weight = 50,
		stack = true,
		close = true,
		description = "Un anillo de plata",
		client = {
			image = "silver_ring.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Una bolsa de hierba con 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["arroz"] = {
		label = "Arroz con Pollo",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Arroz Con Pollo",
		client = {
			image = "arrozpollo.png",
		}
	},

	["rod"] = {
		label = "Biela",
		weight = 100,
		stack = true,
		close = true,
		description = "Pieza de una máquina que sirve para transformar el movimiento rectilíneo en movimiento de rotación, o viceversa",
		client = {
			image = "rod.png",
		}
	},

	["tomate"] = {
		label = "Bote de Tomate",
		weight = 100,
		stack = true,
		close = false,
		description = "Bote de Tomate para cocinar",
		client = {
			image = "tomate.png",
		}
	},

	["macarrones"] = {
		label = "Macarrones con Tomate",
		weight = 300,
		stack = true,
		close = true,
		description = "Plato de Macarrones Con Tomate",
		client = {
			image = "macarrones.png",
		}
	},

	["painkillers"] = {
		label = "Tranquilizantes",
		weight = 0,
		stack = true,
		close = true,
		description = "Para el dolor que no puedes soportar más, toma esta pastilla que te hará sentir bien otra vez",
		client = {
			image = "painkillers.png",
		}
	},

	["skateboard6"] = {
		label = "Skate 6",
		weight = 5000,
		stack = true,
		close = true,
		description = "Skate úsalo para hacer trucos",
		client = {
			image = "skateboard6.png",
		}
	},

	["photo"] = {
		label = "Foto",
		weight = 120,
		stack = true,
		close = true,
		description = "Has tomado una foto, mirala ya y haz lo que quieras con ella.",
		client = {
			image = "camera.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Semilla",
		weight = 50,
		stack = true,
		close = true,
		description = "Una semilla de hierba OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["crack"] = {
		label = "Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "Para ser feliz mas rapido",
		client = {
			image = "crack.png",
		}
	},
}