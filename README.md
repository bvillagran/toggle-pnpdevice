# Toggle your plug-n-play device on and off again
A PowerShell script to disable and re-enable your plug-n-play device as if you did it through Device Manager

## Usage

  1. Clone this repository (or just copy and paste the [script](/toggle-pnpdevice.ps1} somewhere really)

    git clone https://github.com/bvillagran/toggle-pnpdevice.git

  2. Find the *Friendly Name* of a PnP device you'd like to turn on and off again

    Get-PnpDevice | Format-List -Property FriendlyName

  3. Update the script to use the full *Friendly Name*
  3. Open an elevated PowerShell prompt
  4. Run the script

    & 'Path\To\Clone\toggle-pnpdevice\toggle-pnpdevice.ps1'

  5. [Optional] Set up a Task Scheduler task to run the script automatically
