/decl/hierarchy/outfit/job
	name = "Standard Gear"
	hierarchy_type = /decl/hierarchy/outfit/job

	uniform = /obj/item/clothing/under/color/grey
	l_ear = null
	shoes = /obj/item/clothing/shoes/black

	id_slot = slot_wear_id
	id_type = /obj/item/card/id/civilian
	pda_slot = slot_wear_id
	pda_type = /obj/item/device/pda

	flags = OUTFIT_HAS_BACKPACK

/decl/hierarchy/outfit/job/equip_id(mob/living/carbon/human/H)
	var/obj/item/card/id/C = ..()
	if(H.mind)
		if(H.mind.initial_account)
			C.associated_account_number = H.mind.initial_account.account_number
	return C
