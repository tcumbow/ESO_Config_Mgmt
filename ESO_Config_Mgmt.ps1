function ReplaceInFile
{
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $SubPath,  
        [Parameter()]
        [string]
        $Search,
        [Parameter()]
        [string]
        $Replacement
    )
    ((Get-Content -Path $SubPath -Raw) -replace $Search, $Replacement) | Set-Content -Path ..\live\$SubPath
    return
}

return

ReplaceInFile "..\live\UserSettings.txt" 'SET WeaponsOutCameraZoomDistance ".*00000000"' 'SET WeaponsOutCameraZoomDistance "10.00000000"'
ReplaceInFile "..\live\UserSettings.txt" 'SET WeaponsSheathedCameraZoomDistance ".*00000000"' 'SET WeaponsSheathedCameraZoomDistance "04.00000000"'

ReplaceInFile "..\live\UserSettings.txt" 'SET SkipEULAS "0"' 'SET SkipEULAS "1"'
ReplaceInFile "..\live\UserSettings.txt" 'SET LENS_FLARE "1"' 'SET LENS_FLARE "0"'
ReplaceInFile "..\live\UserSettings.txt" 'SET REFLECTION_QUALITY_v3 "."' 'SET REFLECTION_QUALITY_v3 "0"'
ReplaceInFile "..\live\UserSettings.txt" 'SET HIGH_RESOLUTION_SHADOWS "1"' 'SET HIGH_RESOLUTION_SHADOWS "0"'
ReplaceInFile "..\live\UserSettings.txt" 'SET RAIN_WETNESS "1"' 'SET RAIN_WETNESS "0"'
ReplaceInFile "..\live\UserSettings.txt" 'SET SPECULAR_MAPS "0"' 'SET SPECULAR_MAPS "1"'
ReplaceInFile "..\live\UserSettings.txt" 'SET PreferExclusiveFullscreen "0"' 'SET PreferExclusiveFullscreen "1"'

# ReplaceInFile "..\live\AddOns\ActionDurationReminder\src\Core.lua" 'coreClearWhenCombatEnd = false,' 'coreClearWhenCombatEnd = true,'

#ReplaceInFile "..\live\AddOns\HealerHelper\HealerHelper.lua" 'htHealerHelper.LOW_HEALTH = 0...' 'htHealerHelper.LOW_HEALTH = 0.85'

# ReplaceInFile "..\live\AddOns\VotansMiniMap\Main.lua" 'showCombat = false' 'showCombat = true'
# ReplaceInFile "..\live\AddOns\VotansMiniMap\Main.lua" 'asyncUpdate = false' 'asyncUpdate = true'

# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'autoSwitchBait = false' 'autoSwitchBait = true'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'anim:SetAlphaValues(0.2, 1)' 'anim:SetAlphaValues(0.0, 1)'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'data.reelInAnim:SetPlaybackType(ANIMATION_PLAYBACK_PING_PONG, 5)' 'data.reelInAnim:SetPlaybackType(ANIMATION_PLAYBACK_PING_PONG, 15)'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'anim:SetDuration(600)' 'anim:SetDuration(250)'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'reelInColor = "FFFFFF",' 'reelInColor = "FF0000",'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'reelInSize = 1,' 'reelInSize = 4,'
# ReplaceInFile "..\live\AddOns\VotansFisherman\VotansFisherman100015.lua" 'notificationAnim = "Pulse1",' 'notificationAnim = "Fade1",'

# ReplaceInFile "..\live\AddOns\ChatWindowManager\ChatWindowManager.lua" 'RememberState = true,' 'RememberState = false,'

# ReplaceInFile "..\live\AddOns\DailyAutoShare\00_startup.lua" 'hidden 						          = false,' 'hidden 						          = true,'
# ReplaceInFile "..\live\AddOns\DailyAutoShare\DasGui.lua" '(not DAS.GetActiveIn()) or DAS.GetHidden() or (DAS.GetAutoHide() and (not DAS.OpenDailyPresent()))' 'true'

ReplaceInFile "..\live\AddOnSettings.txt" '#LoadOutOfDateAddOns 0' '#LoadOutOfDateAddOns 1'

# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" '\[c\.PINS_COMPASS_EIDETIC\] = false,' '[c.PINS_COMPASS_EIDETIC] = true,'
# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" '\[c\.PINS_EIDETIC\] = false,' '[c.PINS_EIDETIC] = true,'
# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" 'unlockEidetic = false,' 'unlockEidetic = true,'
# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" 'type = 1,' 'type = 2,'
# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" 'size = 26,' 'size = 31,'
# ReplaceInFile "..\live\AddOns\LoreBooks\Settings.lua" 'pinTextureEidetic = 1,' 'pinTextureEidetic = 4,'

# ReplaceInFile "..\live\AddOns\BindAll\BindAllMenu.lua" 'autoBind = false,' 'autoBind = true,'

# ReplaceInFile "..\live\AddOns\CombatAlerts\CombatAlerts.lua" 'castAlertsSound = true,' 'castAlertsSound = false,'


#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua" '\["size"\] = ..,' '["size"] = 31,'
#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua"  '\["pinTextureEidetic"\] = .,' '["pinTextureEidetic"] = 4,'
#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua" '\["type"\] = .,' '["type"] = 2,'
#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua" '\["LBooksCompassPin_eidetic"\] = false,' '["LBooksCompassPin_eidetic"] = true,'
#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua" '\["LBooksMapPin_eidetic"\] = false,' '["LBooksMapPin_eidetic"] = true,'
#ReplaceInFile "..\live\SavedVariables\Lorebooks.lua" '\["unlockEidetic"\] = false,' '["unlockEidetic"] = true,'

#ReplaceInFile "..\live\SavedVariables\AchievementUpdates.lua" '\["widgetY"\] = ...,' '["widgetY"] = 400,'
#ReplaceInFile "..\live\SavedVariables\AchievementUpdates.lua" '\["maxItemsToDisplay"\] = .,' '["maxItemsToDisplay"] = 8,'

# ReplaceInFile "..\live\AddOns\AchievementUpdates\main.lua" 'widgetY = Widget.control:GetTop()  or 190,' 'widgetY = Widget.control:GetTop()  or 400,'
# ReplaceInFile "..\live\AddOns\AchievementUpdates\main.lua" 'maxItemsToDisplay = 3,' 'maxItemsToDisplay = 8,'
