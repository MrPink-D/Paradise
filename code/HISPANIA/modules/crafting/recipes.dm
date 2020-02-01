/datum/crafting_recipe/xenobluespacecell
	name = "Xenobluespace power cell"
	result = /obj/item/stock_parts/cell/xenoblue
	reqs = list(/obj/item/stock_parts/cell/high/slime = 1,
				/obj/item/xenobluecellmaker = 1,
				/obj/item/stock_parts/cell/bluespace = 1
	)
	time = 15
	category = CAT_MISC


/datum/crafting_recipe/flowercrown
	name = "Flower Crown"
	result = /obj/item/clothing/head/flowercrown
	time = 10
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/poppy = 5)
	category = CAT_MISC


/datum/crafting_recipe/femur_breaker
	name = "Femur Breaker"
	result = /obj/structure/femur_breaker
	time = 150
	reqs = list(/obj/item/stack/sheet/plasteel = 10,
				/obj/item/stack/rods = 20,
				/obj/item/stack/sheet/metal = 10,
		        /obj/item/stack/cable_coil = 30)
	tools = list(/obj/item/screwdriver, /obj/item/wrench, /obj/item/weldingtool)
	category = CAT_MISC

 ////////////////
//////Globos//////
 ////////////////

/datum/crafting_recipe/balloon
	name = "White balloon"
	time = 10
	result = /obj/item/toy/balloon_H
	reqs = list(/obj/item/stack/sheet/plastic = 5,
		        /obj/item/stack/cable_coil = 5)
	category = CAT_DECORATIONS
	subcategory = CAT_HOLIDAY

/datum/crafting_recipe/balloonm
	name = "Macdonalds balloon"
	result = /obj/item/toy/balloon_H/m
	time = 15
	reqs = list(/obj/item/stack/sheet/plastic = 5,
		        /obj/item/stack/cable_coil = 5,
		        /obj/item/reagent_containers/food/snacks/monkeyburger = 1)
	category = CAT_DECORATIONS
	subcategory = CAT_HOLIDAY

/datum/crafting_recipe/ballooncorgi
	name = "Corgi balloon"
	result = /obj/item/toy/balloon_H/corgi

	parts = list(/mob/living/simple_animal/pet/dog/corgi = 1)
	time = 10
	reqs = list(/obj/item/stack/sheet/plastic = 5,
		        /obj/item/stack/cable_coil = 5,
		        /obj/item/reagent_containers/food/snacks/meat/corgi = 1)

	category = CAT_DECORATIONS
	subcategory = CAT_HOLIDAY

/datum/crafting_recipe/balloonclown
	name = "Clown balloon"
	result = /obj/item/toy/balloon_H/clown
	time = 10
	reqs = list(/obj/item/stack/sheet/plastic = 5,
		        /obj/item/stack/cable_coil = 5,
		        /obj/item/stack/sheet/mineral/bananium = 1)
	category = CAT_DECORATIONS
	subcategory = CAT_HOLIDAY

/datum/crafting_recipe/balloonmime
	name = "Mime balloon"
	result = /obj/item/toy/balloon_H/mime
	time = 10
	reqs = list(/obj/item/stack/sheet/plastic = 5,
		        /obj/item/stack/cable_coil = 5,
		        /obj/item/stack/sheet/mineral/tranquillite = 1)
	category = CAT_DECORATIONS
	subcategory = CAT_HOLIDAY
