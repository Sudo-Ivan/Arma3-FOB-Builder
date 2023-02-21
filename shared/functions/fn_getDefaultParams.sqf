#include "..\defines.hpp"
#include "..\builder.hpp"

//
// Game parameters
//
// These parameters should be specified in the order they will be displayed, and grouped by
// their category. See PARAMETERS.md for details.
//

private _defaultBuilderParams = [ 
	//
	// PARAM_CATEGORY_FILTERS
	//
	[
		BUILDER_PARAM_BUILDPOINTS_MODE,
		"How points are distributed", PARAM_CATEGORY_UPGRADES, PARAM_TYPE_NUMBER, false,
		[
			[0, "Personal", BUILDPOINTS_MODE_PRIVATE],
			[1, "Shared", BUILDPOINTS_MODE_SHARED],
			[2, "Shareable", BUILDPOINTS_MODE_SHAREABLE]
		],
		0,
		"points can either be personal, shared among all players, or shared manually by players."
	],
	[
		BUILDER_PARAM_START_BUILDPOINTS,
		"Points to start with", PARAM_CATEGORY_UPGRADES, PARAM_TYPE_NUMBER, false,
		[
		[1000, "1000", BUILDER_START_BUILDPOINTS],
		[20000, "20000", BUILDER_START_BUILDPOINTS],
		[300000, "300000", BUILDER_START_BUILDPOINTS]
		],
		20000,
		"Players will start with this many upgrade points"
	]
];
_defaultBuilderParams;

diag_log ["getDefaultParams"];