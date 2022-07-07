package app.rbac

import future.keywords.in

default allow = false

allow {
	some feature
	user_is_granted[feature]
	input.feature == feature
}

user_is_granted[feature] {
	some role in data.userRoles[input.user]
	some feature in data.roleFeatures[role]
}
