/obj/item/storage/fancy/shhig
	name = "Shhig Brand Zigs"
	desc = "Shhig's Brand Zigs; much like the image of serpents these zigs are synonymous with both healing and killing. Your life expectancy isnt very high anyway."
	icon = 'modular/Smoker/icon/smokable.dmi'
	icon_state = "smokebox"
	icon_type = "smoke"
	item_state = "smokebox"
	fancy_open = TRUE
	w_class = WEIGHT_CLASS_TINY
	throwforce = 0
	slot_flags = null
	spawn_type = /obj/item/clothing/mask/cigarette/rollie/snek

/obj/item/storage/fancy/shhig/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 5
	STR.set_holdable(list(/obj/item/clothing/mask/cigarette/rollie/snek))

/obj/item/storage/fancy/shhig/attack_self(mob_user)
	return

/obj/item/clothing/mask/cigarette/rollie/snek
	list_reagents = list(/datum/reagent/drug/nicotine = 30, /datum/reagent/consumable/honey = 3, /datum/reagent/toxin/venom = 10) //honey will give heal. it is NOT great 55% chance per unit tick to heal 1brute,burn,tox. high end perfect rolls 30hp. unlikely. degrades into sugar (chance) which has a chance to degrade into nutrients. simulates appetite surpressant effect.
