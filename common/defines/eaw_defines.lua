NDefines.NGame.START_DATE = "982.1.1"
NDefines.NGame.END_DATE = "1060.1.1"
NDefines.NGame.HANDS_OFF_START_TAG = "ELN"

NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "982.1.1"
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 10
NDefines.NDiplomacy.MAX_OPINION_VALUE = 200							-- Max opinion value cap.
NDefines.NDiplomacy.MIN_OPINION_VALUE = -200						-- Min opinion value cap.
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 1               -- min division amount to be able send volunteers (we want realism - if we have any - we can send them)

NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.1					-- Max ammount of special forces battalions is total number of non-special forces battalions multiplied by this and modified by a country modifier
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 32					-- You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier
NDefines.NCountry.MAJOR_MIN_FACTORIES = 25 --default 35		-- need at least these many factories to become a major
-- modifiers female_random_operative_chance female_random_army_leader_chance female_random_admiral_chance
NDefines.NCountry.FEMALE_UNIT_LEADER_BASE_CHANCE = { 
    -- applies as a factor to female unit leader randomization
    -- the values needs to be zero if you don't actually have random portraits
    1.0, -- country leaders
    1.0, -- army leaders
    1.0, -- navy leaders
    1.0, -- air leaders
    1.0, -- operatives
}
NDefines.NCountry.BASE_RESEARCH_SLOTS = 0
NDefines.NCountry.BASE_FUEL_GAIN = 0

NDefines.NResistance.GARRISON_MANPOWER_LOST_BY_ATTACK = 0.01 	-- Ratio of manpower lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)

NDefines.NProduction.BASE_FACTORY_SPEED_NAV = 3.5 -- vanilla is 2.5

NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4
NDefines.NMilitary.TRAINING_MAX_LEVEL = 10
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 5
NDefines.NMilitary.UNIT_EXP_LEVELS = {0.02,	0.04,	0.06,	0.08,	0.1,	0.14,	0.18,	0.22,	0.26,	0.3,	0.39,	0.48,	0.57,	0.66,	0.75,	0.78,	0.81,	0.84,	0.87,	0.9}		-- Experience needed to progress to the next level
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.05
NDefines.NMilitary.ARMY_EXP_BASE_LEVEL = 5
NDefines.NMilitary.MIN_DIVISION_BRIGADE_HEIGHT = 2	-- vanila is 4, make doctrines more valuable
NDefines.NMilitary.BASE_NIGHT_ATTACK_PENALTY = -0.8
NDefines.NMilitary.NUKE_MAX_DAMAGE_PERCENT = 0.3 -- vanila is 0.9

NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.3 -- Vanilla is 0.25
NDefines.NNavy.SCREENS_TO_CAPITAL_RATIO = 3.0 -- Vanilla is 4.0, mostly AI stuff

NDefines.NAir.CARRIER_SIZE_STAT_INCREMENT = 1 -- Vanilla is 10
NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO = 0.03 	-- Max planes that can join a combat comparing to the total strength of the ships, vanilla is 0.05

NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12 -- Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_BONUS_FACTOR = 1.5 				-- To which extent AI should care about bonuses to research
NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 6.0
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 1.1
NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 100.0
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.15
NDefines.NAI.DIPLOMACY_FACTION_GLOBAL_TENSION_FACTOR = 0.15
NDefines.NAI.DIPLOMACY_FACTION_NEUTRALITY_PENALTY = 0.2
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 14
NDefines.NAI.FASCISTS_ALLY_FASCISTS = -10
NDefines.NAI.FASCISTS_BEFRIEND_FASCISTS = 0
--NDefines.NAI.MANPOWER_FREE_USAGE_THRESHOLD = 600000			-- If AI has this much manpower he doesn't care about the percentage
NDefines.NAI.NEUTRAL_THREAT_PARANOIA = 1
--NDefines.NAI.DIVISION_CREATE_MIN_XP = 50
--NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 10
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 42 --default 100
NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 1.2 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.1 --default 0.25
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.2 --default -0.5
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.05	--default 0.95	-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.80	--default 0.95	-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.1 --default 0.2				-- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.
NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0	--default 1.0			-- Factor for max number of units to assign to area front orders
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0	--default 1.1		-- Factor for desired number of units to assign to area front orders
NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0	--default 1.0			-- Factor for min number of units to assign to area front orders
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 0.8	--default 1.0	-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 0.8	--default 1.0	-- Factor for desired number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 0.8	--default 1.0			-- Factor for min number of units to assign to naval invasion orders
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.
NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.6	--default 0.7		-- Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.6	--default 0.7				-- Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 400
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 12 		-- optimum capital count for capital taskforces Vanilla is 12
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 5		-- optimum screen count for screen taskforces Vanilla is 12
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 4 			-- optimum sub count for sub taskforces Vanilla is 16
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 100

NDefines.NOperatives.AGENCY_CREATION_FACTORIES = 3
NDefines.NOperatives.AGENCY_UPGRADE_PER_OPERATIVE_SLOT = 4			-- Number of upgrade needed to unlock an additional operative slot

NDefines.NSupply.VP_TO_SUPPLY_BASE = 0.2 -- Bonus to supply from a VP, no matter the level (Base is 0.2)
NDefines.NSupply.AVAILABLE_MANPOWER_STATE_SUPPLY = 0.5 --Factor for state supply from max manpower (population) (Base is 0.18, this is PER MILLION.)
NDefines.NSupply.VP_TO_SUPPLY_BONUS_CONVERSION = 0.05 -- Bonus to supply local supplies from Victory Points, multiplied by this aspect and rounded to closest integer (Base is 0.05)
NDefines.NSupply.CAPITAL_INITIAL_SUPPLY_FLOW = 5.0 -- starting supply from
NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.3 -- starting penalty that will be added as supply moves away from its origin (modified by stuff like terrain) (Default is 0.5)
NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.0 -- added penalty as we move away from origin (Default is 1.2)

NDefines.NTechnology.MIN_RESEARCH_SPEED = 0.001 -- Defines research speed, can't go below this value (default is 0.1)

NDefines.NBuildings.MAX_SHARED_SLOTS = 35

--NDefines.NFrontend.CAMERA_MIN_HEIGHT = 1 --if need a detailed model view