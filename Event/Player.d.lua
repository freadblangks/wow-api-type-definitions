---@meta

---@alias EventPlayerCombat
--- arg1 is always 'player' not the number of combo points you have.
--- Use the function GetComboPoints(); to get the exact number of combo points you have.
--- | "PLAYER_COMBO_POINTS"
---
--- Fires after the PLAYER_CONTROL_LOST event, when control has been restored to the player.
--- | "PLAYER_CONTROL_GAINED"
---
--- Fires whenever the player is unable to control the character. Examples are when afflicted by fear or when using a taxi.
--- | "PLAYER_CONTROL_LOST"
---
--- Fired when the player leaves combat through death, defeat of opponents, or an ability. Does not fire if a player flees from combat on foot.
--- - Unrelated to PLAYER_ENTER_COMBAT
--- | "PLAYER_LEAVE_COMBAT"
---
--- Fired whenever you get aggro, as normal regen rates are disabled during combat.
--- | "PLAYER_REGEN_DISABLED"
---
--- Fired a few seconds after ending combat, as regen rates return to normal.
--- | "PLAYER_REGEN_ENABLED"

---@alias EventPlayer
--- | EventPlayerCombat
--- | EventSpellPlayer
---
--- Fired when the player's character points are changed.
--- - TODO check if there's actually an arg1
--- arg1 -1|1 Number of talent points changed: -1 indicates one used (learning a talent), 1 indicates one gained (leveling)
--- | "CHARACTER_POINTS_CHANGED"
---
--- Fired when the player is camping
--- | "PLAYER_CAMPING"
---
--- This event fires when a Unit's flags change (eg: due to /afk, /dnd, etc.)
--- arg1 UnitId The [UnitID](lua://UnitId) affected, ex. "player".
--- **NOTE**: WoW appears to condense simultaneous flag changes into a single event. If you are currently AFK and not(DND) but you type /dnd you'll see two Chat Log messages ("You are no longer AFK" and "You are now DND: Do Not Disturb") but you'll only see a single PLAYER_FLAGS_CHANGED event.
--- | "PLAYER_FLAGS_CHANGED"
---
--- Fired when a player levels up.
--- arg1 number New player level. *Note that [UnitLevel("player")](http://wowwiki.wikia.com/wiki/API_UnitLevel) will most likely return an incorrect value when called in this event handler or shortly after, so use this value.*
--- arg2 number Hit points gained from leveling.
--- arg3 number Mana points gained from leveling.
--- arg4 number Talent points gained from leveling. Should always be 1 unless the player is between levels 1 to 9.
--- arg5 number Strength increase from leveling.
--- arg6 number Agility increase from leveling.
--- arg7 number Stamina increase from leveling.
--- arg8 number Intellect increase from leveling.
--- arg9 number Spirit increase from leveling.
--- | "PLAYER_LEVEL_UP"
---
--- Fired whenever the player gains or looses money.
--- | "PLAYER_MONEY"
---
--- Fired when the player starts or stops resting, ei when entering/leaving inns/major towns.
--- | "PLAYER_UPDATE_RESTING"
---
--- Fired when the player's XP is updated (due quest completion or killing)
--- | "PLAYER_XP_UPDATE"
---
--- Fired when the playtime state changes.
--- | "PLAYTIME_CHANGED"
---
--- | "UPDATE_EXHAUSTION"
---
--- | "UPDATE_FACTION"
---
--- | "UPDATE_GM_STATUS"
