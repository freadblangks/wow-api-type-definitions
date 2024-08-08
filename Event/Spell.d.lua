---@meta

---@alias EventSpellUnit
--- Fired when a spell misses
--- arg1 UnitId
--- arg2 CombatMessage
--- | "UNIT_SPELLMISS"

---@alias EventSpell
--- | EventSpellUnit
---
--- Fired when the spell being cast is changed.
--- | "CURRENT_SPELL_CAST_CHANGED"
---
--- Fired when a new spell/ability is added to the spellbook. e.g. When training a new or a higher level spell/ability.
--- arg1 number Number of the tab which the spell/ability is added to
--- | "LEARNED_SPELL_IN_TAB"
---
--- Fired when a spellcaster begins channelling
--- - On version 1.2.1, this event doesnt seem to work.
--- arg1 number Duration (in milliseconds)
--- arg2 string Spell Name
--- | "SPELLCAST_CHANNEL_START"
---
--- Fired when a channelling spell is updated.
--- arg1 number Remaining duration in milliseconds.
--- | "SPELLCAST_CHANNEL_UPDATE"
---
--- Fired when a spellcast duration is increased
--- arg1 number Disruption time
--- | "SPELLCAST_DELAYED"
---
--- Fired when a spell fails.
--- | "SPELLCAST_FAILED"
---
--- Fired when a spellcast is interrupted
--- | "SPELLCAST_INTERRUPTED"
---
--- Fired when a spellcast is begun. This event seems to work if the spell has a casting time. For instant, there is no SPELLCAST_START but SPELLCAST_STOP.
--- arg1 string Spell Name
--- arg2 number Duration (arg2 seems to be in milliseconds ex. 1.5 second cast time shows as 1500
--- | "SPELLCAST_START"
---
--- Fired when a spell cast stops. Called twice when the spell is channelled. Once at start, once at completion.
--- | "SPELLCAST_STOP"
---
--- Fired when:
--- 1. Learning or Unlearning anything in spellbook.
--- 2. Opening or Navigating through spellbook.
--- 3. Changing or Equiping weapons, which changes the Attack icon in spellbook.
--- 4. On regular intervals for no apparent reason.
--- - nil when the char learns stuff. Also when changing weapons and shapeshifting.
--- - number when the user opens the spellbook.
--- - MouseButton when using the mouse to open the spellbook or to browse through the pages and tabs of the open spellbook.
--- arg1 nil|number|MouseButton
--- | "SPELLS_CHANGED"
---
--- Fired when spell cooldown starts.
--- - If the spell is triggered by keypress, arg1 is the [GetTime()](http://wowwiki.wikia.com/wiki/API_GetTime) output in string format.
--- - Otherwise, arg1 is mousebutton used.
--- arg1 string|MouseButton
--- | "SPELL_UPDATE_COOLDOWN"
---
--- Fires when you enter combat or die.
--- | "SPELL_UPDATE_USABLE"
---
--- | "START_AUTOREPEAT_SPELL"
---
--- | "STOP_AUTOREPEAT_SPELL"
