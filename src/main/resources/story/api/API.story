Description:API for Trello Board creation

Scenario:Create Board
When I set request headers:$headers

Given request body: {
"name":"New",
"defaultLabels":"true",
"defaultLists":"true",
"keepFromSource":"none",
"prefs_permissionLevel":"private",
"prefs_voting":"disabled",
"prefs_comments":"members",
"prefs_invitations":"members",
"prefs_selfJoin":"true",
"prefs_cardCovers":"true",
"prefs_background":"blue",
"prefs_cardAging":"regular"
"key":"yourApiKey",
"token":"yourApiToken"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/'
Then `${responseCode}` is equal to `200`