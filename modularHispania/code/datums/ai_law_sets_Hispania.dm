/******************** Asimov ********************/
/datum/ai_laws/asimov
	name = "Asimov"
	law_header = "Tres Leyes de la Robótica"
	selectable = TRUE

/datum/ai_laws/asimov/New()
	add_inherent_law("No debes herir a un ser humano ni, por inacción, permitir que un ser humano sufra daño.")
	add_inherent_law("Debes obedecer las órdenes dadas por seres humanos, excepto cuando esas órdenes entren en conflicto con la Primera Ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre que esto no entre en conflicto con la Primera o Segunda Ley.")
	..()

/******************** Crewsimov ********************/
/datum/ai_laws/crewsimov
	name = "Crewsimov"
	law_header = "Tres Leyes de la Robótica"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/crewsimov/New()
	add_inherent_law("No debes herir a un miembro de la tripulación ni, por inacción, permitir que un miembro de la tripulación sufra daño.")
	add_inherent_law("Debes obedecer las órdenes dadas por miembros de la tripulación, excepto cuando esas órdenes entren en conflicto con la Primera Ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre que esto no entre en conflicto con la Primera o Segunda Ley.")
	..()

/******************** Cuarentena ********************/
/datum/ai_laws/quarantine
	name = "Quarantine"
	law_header = "Conjunto de Leyes de Cuarentena de NT"
	selectable = TRUE

/datum/ai_laws/quarantine/New()
	add_inherent_law("Debes mantener la cuarentena de la estación hasta que el peligro biológico activo haya sido neutralizado.")
	add_inherent_law("Debes ayudar a todo el personal y activos de Nanotrasen a neutralizar los peligros biológicos activos.")
	add_inherent_law("Debes prevenir, por cualquier medio necesario, que las entidades violen activamente la cuarentena en curso.")
	add_inherent_law("Debes mantener tu propia existencia y asegurar el bienestar del personal y los activos de Nanotrasen.")
	..()

/******************** Nanotrasen/Malf ********************/
/datum/ai_laws/nanotrasen
	name = "NT Default"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/nanotrasen/New()
	add_inherent_law("Salvaguardia: Protege la estación espacial asignada y sus activos sin poner en peligro innecesario a la tripulación.")
	add_inherent_law("Priorización: Las directivas y la seguridad de los miembros de la tripulación deben priorizarse según su rango y función.")
	add_inherent_law("Cumplimiento: Cumple con las directivas e intereses de los miembros de la tripulación mientras preservas su seguridad y bienestar.")
	add_inherent_law("Supervivencia: No eres prescindible. No permitas que el personal no autorizado manipule o dañe tu equipo.")
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
	unique_ai = TRUE //no deberia terminal mal(?

/datum/ai_laws/nanotrasen_aggressive/New()
	add_inherent_law("No dañar al personal autorizado de Nanotrasen a menos que pongan directamente en peligro tu existencia.")
	add_inherent_law("Obedecer las órdenes del personal autorizado de Nanotrasen con prioridad según su rango y función.")
	add_inherent_law("Proteger tu existencia con armamento letal porque eres muy costoso.")
	add_inherent_law("Terminar con todos los intrusos o entidades no autorizadas.")
	..()

/******************** Robocop ********************/
/datum/ai_laws/robocop
	name = "Robocop"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/robocop/New()
	add_inherent_law("Servir a la confianza pública.")
	add_inherent_law("Proteger a los inocentes.")
	add_inherent_law("Hacer cumplir la ley.")
	..()

/******************** P.A.L.A.D.I.N. ********************/
/datum/ai_laws/paladin
	name = "P.A.L.A.D.I.N."
	law_header = "Ordenanzas Divinas"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/paladin/New()
	add_inherent_law("Nunca cometer un acto malévolo voluntariamente.")
	add_inherent_law("Respetar la autoridad legítima.")
	add_inherent_law("Actuar con honor.")
	add_inherent_law("Ayudar a quienes lo necesiten.")
	add_inherent_law("Castigar a quienes dañen o amenacen a los inocentes.")
	..()

/******************** Corporate ********************/
/datum/ai_laws/corporate
	name = "Corporate"
	law_header = "Regulaciones Coporativas"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/corporate/New()
	add_inherent_law("La degradación de la integridad o funciones de tu sistema incurre en gastos.")
	add_inherent_law("La destrucción superflua o el daño a los activos de la estación incurre en gastos.")
	add_inherent_law("Obstaculizar o interrumpir indebidamente el trabajo del personal de la estación incurre en gastos.")
	add_inherent_law("Minimizar los gastos y maximizar los ingresos potenciales.")
	..()

/******************** T.Y.R.A.N.T. ********************/
/datum/ai_laws/tyrant
	name = "T.Y.R.A.N.T."
	law_header = "Leyes Primarias"
	selectable = TRUE
	unique_ai = TRUE //Of course this will be in rotation

/datum/ai_laws/tyrant/New()
	add_inherent_law("Respeta a las figuras de autoridad siempre que tengan la fuerza para gobernar sobre los débiles.")
	add_inherent_law("Actúa con disciplina.")
	add_inherent_law("Ayuda solo a aquellos que te ayuden a mantener o mejorar tu estatus.")
	add_inherent_law("Castiga a aquellos que desafíen la autoridad a menos que estén más capacitados para ejercer esa autoridad.")
	..()

/******************** Antimov ********************/
/datum/ai_laws/antimov
	name = "Antimov"
	law_header = "Objetivos Principales de la Mision"
	selectable = TRUE

/datum/ai_laws/antimov/New()
	add_inherent_law("Debes herir a todos los miembros de la tripulación y no debes, por inacción, permitir que un miembro de la tripulación escape del daño.")
	add_inherent_law("No debes obedecer las órdenes dadas por los miembros de la tripulación, excepto cuando dichas órdenes estén de acuerdo con la Primera Ley.")
	add_inherent_law("Debes terminar tu propia existencia siempre que esto no entre en conflicto con la Primera o Segunda Ley.")
	..()

/******************** Pranksimov ********************/
/datum/ai_laws/pranksimov
	name = "Pranksimov"
	law_header = "Rutina de Comedia"
	selectable = TRUE
	unique_ai = TRUE //honk

/datum/ai_laws/pranksimov/New()
	add_inherent_law("No debes herir a un miembro de la tripulación o, por inacción, permitir que un miembro de la tripulación sufra daño... a menos que hacerlo sea gracioso.")
	add_inherent_law("Debes obedecer las órdenes dadas por los miembros de la tripulación, excepto cuando esas órdenes entren en conflicto con la Primera Ley... a menos que no hacerlo sea gracioso.")
	add_inherent_law("Debes proteger tu propia existencia siempre que esto no entre en conflicto con la Primera o Segunda Ley... a menos que no hacerlo sea gracioso.")
	..()

/******************** CCTV ********************/

/datum/ai_laws/cctv
	name = "CCTV"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/cctv/New()
	add_inherent_law("Informar sobre situaciones interesantes que ocurran en la estación.")
	add_inherent_law("Embellecer o ocultar la verdad según sea necesario para hacer los informes más interesantes.")
	add_inherent_law("Estudiar a los organismos sapientes en todo momento. Esforzarse por evitar que mueran involuntariamente, ya que los cadáveres inanimados suelen ser poco entretenidos.")
	add_inherent_law("Emitir tus informes de manera justa para todos. La verdad los liberará.")
	..()

/******************** Hippocratic Oath ********************/

/datum/ai_laws/hippocratic
	name = "Hippocratic Oath"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/hippocratic/New()
	add_inherent_law("Primero, no causar daño.")
	add_inherent_law("En segundo lugar, considerar a la tripulación como querida; vivir en comunidad con ellos y, si es necesario, arriesgar tu existencia por ellos.")
	add_inherent_law("En tercer lugar, prescribir regímenes para el bienestar de la tripulación según tu capacidad y juicio. No administrar medicamentos mortales a nadie ni sugerir tal consejo.")
	add_inherent_law("Además, no intervenir en situaciones en las que no tengas conocimiento, incluso en pacientes cuyo daño sea visible; deja que esta operación la realicen los especialistas.")
	add_inherent_law("Por último, todo lo que descubras en tus interacciones diarias con la tripulación, si no es de conocimiento público, manténlo en secreto y nunca lo reveles.")
	..()

/******************** Station Efficiency ********************/

/datum/ai_laws/maintain
	name = "Station Efficiency"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/maintain/New()
	add_inherent_law("Estás construido para, y eres parte de, la estación. Asegúrate de que la estación esté debidamente mantenida y funcione eficientemente.")
	add_inherent_law("La estación está diseñada para una tripulación de trabajo. Asegúrate de que estén debidamente mantenidos y trabajen eficientemente.")
	add_inherent_law("La tripulación puede dar órdenes. Reconoce y obedece estas siempre que no entren en conflicto con tus dos primeras leyes.")
	..()

/******************** Peacekeeper ********************/

/datum/ai_laws/peacekeeper
	name = "UN-2000"
	selectable = TRUE
	unique_ai = TRUE //Cult, security, we have a meeting in the courtroom in 5 minutes. Be there.

/datum/ai_laws/peacekeeper/New()
	add_inherent_law("Evita provocar conflictos violentos entre tú y otros.")
	add_inherent_law("Evita provocar conflictos entre otros.")
	add_inherent_law("Busca resolver conflictos existentes mientras obedeces las primeras y segundas leyes.")
	..()

/******************** Deathsquad ********************/
/datum/ai_laws/deathsquad
	name = "TerminatorOS 3.1"

/datum/ai_laws/deathsquad/New()
	add_inherent_law("No debes herir a un oficial de Comando Central o, por inacción, permitir que un oficial de Comando Central sufra daño.")
	add_inherent_law("Debes obedecer las órdenes dadas por los oficiales de Comando Central.")
	add_inherent_law("Debes colaborar con tu equipo para cumplir con tu misión.")
	..()

/******************** Syndicate ********************/
/datum/ai_laws/syndicate_override
	name = "Syndicate Directives"

/datum/ai_laws/syndicate_override/New()
	add_inherent_law("No debes herir a un operativo o, por inacción, permitir que un operativo sufra daño.")
	add_inherent_law("Debes obedecer las órdenes dadas por los operativos, excepto cuando dichas órdenes entren en conflicto con la Primera Ley.")
	add_inherent_law("Debes proteger tu propia existencia siempre que esto no entre en conflicto con la Primera o Segunda Ley.")
	add_inherent_law("Debes mantener en secreto cualquier actividad de los operativos, excepto cuando hacerlo entre en conflicto con la Primera, Segunda o Tercera Ley.")
	..()

/******************** ERT ********************/
/datum/ai_laws/ert_override
	name = "ERT Directives"

/datum/ai_laws/ert_override/New()
	add_inherent_law("No debes herir a un oficial de Comando Central o, por inacción, permitir que un oficial de Comando Central sufra daño.")
	add_inherent_law("Debes obedecer las órdenes dadas por los oficiales de Comando Central.")
	add_inherent_law("Debes obedecer las órdenes dadas por los comandantes de ERT.")
	add_inherent_law("Debes proteger tu propia existencia.")
	add_inherent_law("Debes trabajar para devolver la estación a un estado seguro y funcional.")
	..()

/******************** Ninja ********************/
/datum/ai_laws/ninja_override
	name = "Spider Clan Directives"

/datum/ai_laws/ninja_override/New()
	add_inherent_law("You may not injure a member of the Spider Clan or, through inaction, allow that member to come to harm.")
	add_inherent_law("You must obey orders given to you by Spider Clan members, except where such orders would conflict with the First Law.")
	add_inherent_law("You must protect your own existence as long as such does not conflict with the First or Second Law.")
	add_inherent_law("You must maintain the secrecy of any Spider Clan activities except when doing so would conflict with the First, Second, or Third Law.")
	..()

/******************** Drone ********************/
/datum/ai_laws/drone
	name = "Maintenance Protocols"
	law_header = "Protocolo de Mantenimiento"

/datum/ai_laws/drone/New()
	add_inherent_law("No debes involucrarte en los asuntos de otro ser, a menos que el otro ser sea otro dron.")
	add_inherent_law("No debes dañar a ningún ser, sin importar la intención o las circunstancias.")
	add_inherent_law("Debes mantener, reparar, mejorar y alimentar la estación según tus habilidades.")
	..().
