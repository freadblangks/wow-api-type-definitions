---@meta

---@alias EventBattleground
--- | "BATTLEFIELDS_CLOSED"
---
--- | "BATTLEFIELDS_SHOW"
---
--- Fired when the player's insignia is removed in a Battleground.
--- | "PLAYER_SKINNED"
---
--- Fired in Warsong Gulch whenever the flag status changes (picked up, dropped, etc).
--- | "UPDATE_BATTLEFIELD_SCORE"
---
--- Fired whenever you join the queue, change the instance, enter the instance, or leave the instance. Which is nice.
--- | "UPDATE_BATTLEFIELD_STATUS"
---
--- Fired within Battlefields when certain things occur such as a flag being captured.
--- | "UPDATE_WORLD_STATES"

---@alias EventHonor
--- Fired when you slay another player
--- | "PLAYER_PVP_KILLS_CHANGED"
---
--- | "PLAYER_PVP_RANK_CHANGED"
---
--- | "PLAYER_PVPLEVEL_CHANGED"

---@alias EventPvPUnit
--- Fired when the UI is loaded, and when player PVP status is changed or updated.
--- arg1 string The unit whose pvp status has changed (ie. "player")
--- | "UNIT_PVP_UPDATE"
