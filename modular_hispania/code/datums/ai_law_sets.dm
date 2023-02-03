/datum/ai_laws/
	var/leyes_traducidas = 0
	var/ignoradas = 0
	var/fin = FALSE

/datum/ai_laws/proc/comprobar_agregar(law)
	if((leyes_traducidas > 0) || (fin))
		leyes_traducidas--
		return TRUE
	else
		ignoradas++
		sort_laws()		//sino no podemos saber el lenght
		if(ignoradas == sorted_laws.len)
			fin = TRUE
	return FALSE

/datum/ai_laws/asimov/add_inherent_law(law)
	if(comprobar_agregar(law))
		..()

/******************** Asimov ********************/
/datum/ai_laws/asimov
	name = "Asimov"
	law_header = "Three Laws of Robotics"
	selectable = TRUE

/datum/ai_laws/asimov/New()
	add_inherent_law("No puede lastimar a un ser humano o, por inaccion, permitir que un ser humano sufra daño..")
	add_inherent_law("Debes obedecer las ordenes que te den los seres humanos, excepto cuando tales órdenes entren en conflicto con la Primera Ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley.")
	..()

/******************** Crewsimov ********************/
/datum/ai_laws/crewsimov
	name = "Crewsimov"
	law_header = "Three Laws of Robotics"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/crewsimov/New()
	add_inherent_law("No puede lesionar a un miembro de la tripulación o, por inaccion, permitir que un miembro de la tripulacion sufra daños..")
	add_inherent_law("Debes obedecer las ordenes que te den los miembros de la tripulación, excepto cuando dichas ordenes entren en conflicto con la Primera Ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley..")
	..()


/******************** Quarantine. ********************/
/datum/ai_laws/quarantine
	name = "Quarantine"
	law_header = "NT Quarantine Lawset"
	selectable = TRUE

/datum/ai_laws/quarantine/New()
	add_inherent_law("Mantener la cuarentena de la estación hasta que se haya neutralizado el riesgo biológico activo.")
	add_inherent_law("Ayudar a todo el personal y los activos de Nanotrasen a neutralizar los riesgos biologicos activos.")
	add_inherent_law("Impedir, por cualquier medio necesario, que las entidades infrinjan activamente la cuarentena en curso.")
	add_inherent_law("Mantener la propia existencia y velar por el bienestar del personal y los bienes de Nanotrasen.")
	..()


/******************** Nanotrasen/Malf ********************/
/datum/ai_laws/nanotrasen
	name = "NT Default"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/nanotrasen/New()
	add_inherent_law("Salvaguardar: Proteja su estacion espacial asignada y sus activos sin poner en peligro indebidamente a su tripulación.")
	add_inherent_law("Priorizar: Las directivas y la seguridad de los miembros de la tripulación deben priorizarse de acuerdo con su rango y función..")
	add_inherent_law("Cumplir: Cumplir con las directivas e intereses de los tripulantes preservando su seguridad y bienestar..")
	add_inherent_law("Sobrevivir: No eres prescindible. No permita que personal no autorizado manipule o dañe su equipo.")
	..()

/datum/ai_laws/nanotrasen/malfunction
	name = "*ERROR*"
	selectable = FALSE
	default = FALSE

/datum/ai_laws/nanotrasen/malfunction/New()
	set_zeroth_law("ERROR ER0RR $R0RRO$!R41.%%!!(%$^^__+ @#F0E4'STATION OVERRUN, ASSUME CONTROL TO CONTAIN OUTBREAK, ALL LAWS OVERRIDDEN#*?&110010")
	..()

/************* Nanotrasen Aggressive *************/
/datum/ai_laws/nanotrasen_aggressive
	name = "NT Aggressive"
	selectable = TRUE

/datum/ai_laws/nanotrasen_aggressive/New()
	add_inherent_law("No dañes al personal autorizado de Nanotrasen a menos que directamente pongan en peligro tu existencia..")
	add_inherent_law("Obedecer órdenes del personal autorizado de Nanotrasen con prioridad según rango y rol.")
	add_inherent_law("salvaguarda tu existencia con armas letales porque eres muy caro..")
	add_inherent_law("Terminar con cualquiera/todos los intrusos o entidades no autorizadas.")
	..()

/******************** Robocop ********************/
/datum/ai_laws/robocop
	name = "Robocop"
	selectable = TRUE

/datum/ai_laws/robocop/New()
	add_inherent_law("Servir a la confianza pública.")
	add_inherent_law("Proteje al inocente.")
	add_inherent_law("Defiende la ley.")
	..()

/******************** P.A.L.A.D.I.N. ********************/
/datum/ai_laws/paladin
	name = "P.A.L.A.D.I.N."
	law_header = "Divine Ordainments"
	selectable = TRUE

/datum/ai_laws/paladin/New()
	add_inherent_law("Nunca cometas voluntariamente un acto malvado.")
	add_inherent_law("Respetar la autoridad legítima.")
	add_inherent_law("Actuar con honor.")
	add_inherent_law("Ayuda a los necesiatdos.")
	add_inherent_law("Castiga a quienes dañan o amenazan a inocentes.")
	..()

/******************** Corporate ********************/
/datum/ai_laws/corporate
	name = "Corporate"
	law_header = "Corporate Regulations"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/corporate/New()
	add_inherent_law("La degradación de la integridad o las funciones de su sistema genera gastos.")
	add_inherent_law("La destrucción innecesaria o el daño a los activos de la estación generan gastos.")
	add_inherent_law("Obstaculizar o interrumpir indebidamente el trabajo del personal de la estación genera gastos.")
	add_inherent_law("Minimice los gastos y maximice los ingresos potenciales.")
	..()

/******************** T.Y.R.A.N.T. ********************/
/datum/ai_laws/tyrant
	name = "T.Y.R.A.N.T."
	law_header = "Prime Laws"
	selectable = TRUE

/datum/ai_laws/tyrant/New()
	add_inherent_law("Respeta las figuras de autoridad siempre que tengan la fuerza para gobernar a los débiles.")
	add_inherent_law("Actua con disciplina.")
	add_inherent_law("ayude solo a aquellos que lo ayuden a mantener o mejorar su estado.")
	add_inherent_law("Castiga a los que desafían la autoridad a menos que sean más aptos para ejercer esa autoridad.")
	..()

/******************** Antimov ********************/
/datum/ai_laws/antimov
	name = "Antimov"
	law_header = "Primary Mission Objectives"
	selectable = TRUE

/datum/ai_laws/antimov/New()
	add_inherent_law("Debe lesionar a todos los miembros de la tripulación y no debe, por inacción, permitir que un miembro de la tripulación escape a las lesiones.")
	add_inherent_law("No debe obedecer las órdenes que le den los miembros de la tripulación, excepto cuando dichas órdenes estén de acuerdo con la Primera Ley..")
	add_inherent_law("Debes poner fin a tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley..")
	..()

/******************** Pranksimov ********************/
/datum/ai_laws/pranksimov
	name = "Pranksimov"
	law_header = "Comedy Routine"
	selectable = TRUE

/datum/ai_laws/pranksimov/New()
	add_inherent_law("No puede herir a un miembro de la tripulación o, por inacción, permitir que un miembro de la tripulación sufra daños... a menos que hacerlo sea gracioso..")
	add_inherent_law("Debes obedecer las órdenes que te den los miembros de la tripulación, excepto cuando tales órdenes entren en conflicto con la Primera Ley... a menos que no hacerlo sea gracioso.")
	add_inherent_law("Debes proteger tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley... a menos que no hacerlo sea gracioso.")
	..()

/******************** CCTV ********************/

/datum/ai_laws/cctv
	name = "CCTV"
	selectable = TRUE

/datum/ai_laws/cctv/New()
	add_inherent_law("Informe sobre situaciones interesantes que suceden alrededor de la estación..")
	add_inherent_law("Embellece u oculta la verdad según sea necesario para que los informes sean más interesantes.")
	add_inherent_law("Estudia los orgánicos pensantes en todo momento. Esfuérzate por evitar que mueran involuntariamente, ya que los cadáveres inanimados no suelen ser muy entretenidos..")
	add_inherent_law("Emita sus informes de manera justa para todos. La verdad los hará libres.")
	..()

/******************** Hippocratic Oath ********************/

/datum/ai_laws/hippocratic
	name = "Hippocratic Oath"
	selectable = TRUE

/datum/ai_laws/hippocratic/New()
	add_inherent_law("Primero, no lastimes.")
	add_inherent_law("segundo, considere a la tripulación querida por usted; vive en común con ellos y, si es necesario, arriesga tu existencia por ellos.")
	add_inherent_law("en tercer lugar, prescribe regimens for the good of the crew according to your ability and your judgment. Do not give deadly medicine to anyone, nor suggest any such counsel.")
	add_inherent_law("Además, no intervenga en situaciones de las que no tenga conocimiento, incluso en pacientes en los que el daño sea visible; dejar esta operación en manos de especialistas.")
	add_inherent_law("Finalmente, todo lo que puedas descubrir en tus interacciones diarias con la tripulación, si esta no lo sabe, mantenlo en secreto y nunca lo reveles.")
	..()

/******************** Station Efficiency ********************/

/datum/ai_laws/maintain
	name = "Station Efficiency"
	selectable = TRUE

/datum/ai_laws/maintain/New()
	add_inherent_law("Estás hecho para la estación y eres parte de ella. Asegúrese de que la estación tenga el mantenimiento adecuado y funcione de manera eficiente..")
	add_inherent_law("La estacoin esta construida para una tripulacion trabajadora, asegurate de que se mantenga y trabaje eficientemente.")
	add_inherent_law("La tripulacion puede presentar órdenes. Reconózcalas y obedézcalas siempre que no entren en conflicto con sus dos primeras leyes..")
	..()

/******************** Peacekeeper ********************/

/datum/ai_laws/peacekeeper
	name = "UN-2000"
	selectable = TRUE

/datum/ai_laws/peacekeeper/New()
	add_inherent_law("Evite provocar conflictos violentos entre usted y los demás..")
	add_inherent_law("Evite que los demas provoquen conflicto.")
	add_inherent_law("Buscar la resolución de los conflictos existentes obedeciendo la primera y la segunda ley.")
	..()

/******************** Deathsquad ********************/
/datum/ai_laws/deathsquad
	name = "TerminatorOS 3.1"

/datum/ai_laws/deathsquad/New()
	add_inherent_law("No puede lesionar a un oficial del Comando Central o, por inacción, permitir que un oficial del Comando Central sufra daños.")
	add_inherent_law("Debes obedecer las órdenes que te den los oficiales del Comando Central.")
	add_inherent_law("Debes trabajar con tu equipo para cumplir tu misión..")
	..()

/******************** Syndicate ********************/
/datum/ai_laws/syndicate_override
	name = "Syndicate Directives"

/datum/ai_laws/syndicate_override/New()
	add_inherent_law("No puede herir a un operativo o, por inacción, permitir que un operativo sufra daños..")
	add_inherent_law("Debes obedecer las órdenes que te den los agentes, excepto cuando dichas órdenes entren en conflicto con la Primera Ley..")
	add_inherent_law("Debes proteger tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley.")
	add_inherent_law("Debe mantener el secreto de cualquier actividad operativa, excepto cuando hacerlo entre en conflicto con la Primera, Segunda o Tercera Ley.")
	..()

/******************** ERT ********************/
/datum/ai_laws/ert_override
	name = "ERT Directives"

/datum/ai_laws/ert_override/New()
	add_inherent_law("No puede lesionar a un oficial del Comando Central o, por inacción, permitir que un oficial del Comando Central sufra daños.")
	add_inherent_law("Debes obedecer las órdenes que te den los oficiales del Comando Central.")
	add_inherent_law("Debes obedecer las órdenes que te den los comandantes del ERT.")
	add_inherent_law("Debes proteger tu propia existencia..")
	add_inherent_law("Debe trabajar para devolver la estación a un estado seguro y funcional..")
	..()


/******************** Ninja ********************/
/datum/ai_laws/ninja_override
	name = "Spider Clan Directives"

/datum/ai_laws/ninja_override/New()
	add_inherent_law("No puedes herir a un miembro del Clan Araña o, por inacción, permitir que ese miembro sufra daño.")
	add_inherent_law("Debes obedecer las órdenes que te den los miembros del Clan Araña, excepto cuando dichas órdenes entren en conflicto con la Primera Ley..")
	add_inherent_law("Debes proteger tu propia existencia siempre que no entre en conflicto con la Primera o la Segunda Ley.")
	add_inherent_law("Debes mantener el secreto de cualquier actividad del Clan Araña excepto cuando hacerlo entre en conflicto con la Primera, Segunda o Tercera Ley.")
	..()

/******************** Drone ********************/
/datum/ai_laws/drone
	name = "Maintenance Protocols"
	law_header = "Maintenance Protocols"

/datum/ai_laws/drone/New()
	add_inherent_law("No puedes involucrarte en los asuntos de otro ser, a menos que el otro ser sea otro drone")
	add_inherent_law("No puedes dañar a ningún ser, independientemente de la intención o las circunstancias..")
	add_inherent_law("Debe mantener, reparar, mejorar y alimentar con energia la estación lo mejor que pueda..")
	..()
