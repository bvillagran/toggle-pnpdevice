# Author: Brandon Villagran
# Email: bvillagran.dev@gmail.com
# Last Updated: 12/14/19 5:00PM ET

###############################################################################################
# THIS SCRIPT MUST RUN FROM AN ELEVATED POWERSHELL (Run as administrator)
#
# Use this script to toggle a plug-n-play device on and off again in Windows 10 with Powershell
# Simply set the $DeviceFriendlyName variable to the full 'FriendlyName' property of the device.
# To find the FriendlyName of your device you can run the following command in Powershell:
#
# Get-PnpDevice | Format-List -Property FriendlyName
#
# If this is something you need to do every time you reboot your system (like me),
# you can set this to run automatically using the Windows Task Scheduler.
###############################################################################################

$DeviceFriendlyName = 'Intel(R) UHD Graphics 620'

$InstanceId = Get-PnpDevice -FriendlyName $DeviceFriendlyName | Format-List -Property 'InstanceId' | Out-String -Stream | ForEach-Object { $_.Split(' ')[2] }

$InstanceId = "$InstanceId".Trim()
Disable-PnpDevice -InstanceId $InstanceId -Confirm:$false

Enable-PnpDevice -InstanceId $InstanceId -Confirm:$false