local module = {
	sfx = {
		gui = {
			reminder = "rbxassetid://17355430608",
			click = "rbxassetid://17372535843",
			sea_chest_open = "rbxassetid://110284099947026",
			sea_chest_close = "rbxassetid://116253036799750",
			skill_open = "rbxassetid://97725995113226",
			skill_level_up = "rbxassetid://80493979167308",
			shipwright = "rbxassetid://89751915718696",
			shipwheel = "rbxassetid://9119077894",
			pageturn = "rbxassetid://8318563709",
			task_completed = "rbxassetid://124371105601638",
			quest_completed = "rbxassetid://94895265957985",
		},
		can = {
			barrelhit = "rbxassetid://17355438997",
			thunder_start = "rbxassetid://128738468474168",
		},
		treasure = {
			hit = "rbxassetid://17355442382"
		},
		hammer = {
			hit = "rbxassetid://17403151387",
			perfect = "rbxassetid://17403157298"
		},
		sailing = {
			full_sail = "rbxassetid://128707502200247",
		},
		sword = {
			equip = "rbxassetid://79943404869605",
			strike_charge = "rbxassetid://73513652972158",
			deflect = "rbxassetid://104492393977095",
		},
		skeleton_spawn = "rbxassetid://81705701256883",
		door = {
			open = "rbxassetid://90142706534006",
			close = "rbxassetid://85519797980597",
		}
	},
	general_combat = {
		"rbxassetid://17267470541",
		"rbxassetid://17267471078",
		"rbxassetid://17267191847"
	},
	cball_fire = {
		"rbxassetid://17232097303",
		"rbxassetid://17232097569",
		"rbxassetid://17232098398",
		"rbxassetid://17232097936",
		"rbxassetid://17232099133",
	},
	impacts = {
		sail = "rbxassetid://17232160761",
		wood = {
			"rbxassetid://17232177631",
			"rbxassetid://17232177329",
			"rbxassetid://17232177024",
			"rbxassetid://17232176738",
			"rbxassetid://17232176405",
			"rbxassetid://17232176081"
		}
	},
	ship = {
		mast_break = {
			"rbxassetid://17232457784",
			"rbxassetid://17232457964",
			"rbxassetid://17232458142",
			"rbxassetid://17232458465"
		},
		sinking = "rbxassetid://17232444996",
		ship_idle = "rbxassetid://17267079193",
		sails = {
			close = "rbxassetid://17257800043",
			open = "rbxassetid://17257800236",
		},
		sailing = {
			"rbxassetid://17257796110",
			--"rbxassetid://17257795783",
			"rbxassetid://17257795532",
			"rbxassetid://17257795289",
			"rbxassetid://17257794909"
		},
		combat = {
			"rbxassetid://17267186669",
		},
		ocean = {
			loop = "rbxassetid://17257794649",
			seagull = "rbxassetid://17257793765",
			seagull2 = "rbxassetid://17257794144",
		}
	},
	ambients = {
		wave = "rbxassetid://139295935383295",
		marina = "rbxassetid://9112829367",
		cave_creatures = "rbxassetid://390457804",
		swamp = "rbxassetid://161361470",
		cave_drip = "rbxassetid://135844303917087",
		tavern = "rbxassetid://75939058855366",
	},

	sound_volumes = {
		["rbxassetid://139295935383295"] = .04,
		["rbxassetid://111044491505339"] = .3,
		["rbxassetid://97084190189137"] = .3,
		["rbxassetid://115592905770278"] = .3,
		["rbxassetid://79073253411581"] = .25,
		["rbxassetid://133497561187319"] = .25,
		["rbxassetid://135844303917087"] = .15
	},
	["Tortuga"] = {
		combat = {"rbxassetid://17267273593"},
		songs = {"rbxassetid://17267273222", "rbxassetid://17267272376"},
	},
	["Isla de Muerte"] = {
		combat = {"rbxassetid://132015663995106"},
		songs = {"rbxassetid://85507809109703", "rbxassetid://87633760073587"},
	},
	["Cove Isle"] = {
		combat = {"rbxassetid://17322145147"},
		songs = {"rbxassetid://17322145858","rbxassetid://17322144081"},
	},
	["Kingshead"] = {
		combat = {"rbxassetid://103867003690879"},
		songs = {"rbxassetid://74023865855178", "rbxassetid://72208258093581"},
	},
	["Devil's Anvil"] = {
		combat = {"rbxassetid://115592905770278"},
		songs = {"rbxassetid://111044491505339", "rbxassetid://97084190189137"},
	},
	["Tavern"] = {
		combat = {"rbxassetid://133497561187319"},
		songs = {"rbxassetid://97815592173363","rbxassetid://72352407035512","rbxassetid://114630992537797"},
	},
	["Cave"] = {
		combat = {"rbxassetid://133497561187319"},
		songs = {"rbxassetid://79073253411581"},
	}
}

return module
