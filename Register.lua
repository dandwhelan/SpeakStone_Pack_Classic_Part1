local addonName = ...

-- SpeakStone_RegisterSoundPack is defined at the top of
-- the base addon's SpeakStone_Main.lua. If this pack loads
-- first, that global does not exist yet -- queue instead, and
-- the base addon drains the queue itself once it loads.
if SpeakStone_RegisterSoundPack then
    SpeakStone_RegisterSoundPack(addonName, SpeakStoneSoundLengths_Pack_Classic_Part1)
else
    SpeakStonePendingSoundPacks = SpeakStonePendingSoundPacks or {}
    table.insert(SpeakStonePendingSoundPacks,
        { name = addonName, index = SpeakStoneSoundLengths_Pack_Classic_Part1 })
end
