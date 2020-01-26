/mob/living/simple_animal/hostile/oldman/proc/indimension(var/turf/simulated/wall/T)
	var/mob/living/kidnapped = null
	forceMove(get_turf(T))
	notransform = TRUE
	incorporeal_move = 3
	density = 0
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	dimension = TRUE
	visible_message("<span class='danger'>[src] sinks into the wall.</span>")
	playsound(get_turf(src), 'sound/hispania/effects/oldman/phasing.ogg', 100, 1, -1)
	ExtinguishMob()
	rust(T)
	icon_state = "entering"
	if(pulling)
		if(istype(pulling, /mob/living/))
			var/mob/living/victim = pulling
			if(victim.stat == CONSCIOUS)
				visible_message("<span class='warning'>[victim] kicks free of [src] just before entering it!</span>")
				stop_pulling()
			else
				victim.forceMove(src)
				victim.emote("scream")
				visible_message("<span class='warning'><b>[src] drags [victim] into [T]!</b></span>")
				kidnapped = victim
				stop_pulling()

	if(kidnapped)
		to_chat(src, "<B>You begin to feast on [kidnapped]. You can not move while you are doing this.</B>")
		visible_message("<span class='warning'><B>A horrible melting sound come from [T]...</B></span>")
		playsound(get_turf(src), 'sound/hispania/effects/oldman/victim.ogg', 100, 1, -1)
		sleep(75)
		if(kidnapped)
			to_chat(src, "<B>You feed on [kidnapped]. Your health is fully restored.</B>")
			adjustBruteLoss(-3000)
			adjustFireLoss(-3000)
			adjustOxyLoss(-3000)
			adjustToxLoss(-3000)
			var/mob/living/simple_animal/hostile/oldman/scp = src
			scp.devoured++
			to_chat(kidnapped, "<span class='userdanger'>You feel your flesh melting away...</span>")
			kidnapped.adjustFireLoss(1000)
			kidnapped.forceMove(src)
			scp.consumed_mobs.Add(kidnapped)
		else
			to_chat(src, "<span class='danger'>You happily devour... nothing? Your meal vanished at some point!</span>")
	else
		sleep(18)
	notransform = FALSE
	invisibility = INVISIBILITY_REVENANT
	icon_state = "idle"
	return

/mob/living/simple_animal/hostile/oldman/proc/outdimension(var/turf/simulated/wall/T)

	if(notransform)
		to_chat(src, "<span class='warning'>Finish eating first!</span>")
		return
	to_chat(viewers(T), "<span class='warning'>[T] starts to melt away...</span>")
	notransform = TRUE
	if(!do_after(src, 20, target = T))
		return
	if(!T)
		return
	forceMove(get_turf(T))
	rust(T)
	playsound(get_turf(src), 'sound/hispania/effects/oldman/phasing.ogg', 100, 1, -1)
	invisibility = 0
	client.eye = src
	icon_state = "emergence"
	sleep(20)
	icon_state = "oldman"
	notransform = FALSE
	incorporeal_move = 0
	speed = 7
	density = 1
	pass_flags = 0
	dimension = FALSE

	var/list/voice = list('sound/hispania/effects/oldman/oldlaugh.ogg','sound/hispania/effects/oldman/oldgrowl.ogg')
	playsound(get_turf(src), pick(voice),50, 1, -1)
	visible_message("<span class='warning'><B>\The [src] emerges out of \the [T]!</B>")
	return

/mob/living/simple_animal/hostile/oldman/proc/rust(var/turf/simulated/wall/T)
	if(!istype(T, /turf/simulated/shuttle) && !istype(T, /turf/simulated/wall/rust) && !istype(T, /turf/simulated/wall/r_wall) && istype(T, /turf/simulated/wall))
		T.ChangeTurf(/turf/simulated/wall/rust)
	if(!istype(T, /turf/simulated/wall/r_wall/rust) && istype(T, /turf/simulated/wall/r_wall))
		T.ChangeTurf(/turf/simulated/wall/r_wall/rust)