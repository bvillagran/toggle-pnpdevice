# Toggle your plug-n-play device on and off again
A PowerShell script to disable and re-enable your plug-n-play device as if you did it through Device Manager

## Usage

  1. Clone this repository (or just copy and paste the [script](/toggle-pnpdevice.ps1) somewhere really)

    git clone https://github.com/bvillagran/toggle-pnpdevice.git

  2. Find the *Friendly Name* of a PnP device you'd like to turn on and off again

    Get-PnpDevice | Format-List -Property FriendlyName

  3. Update the script to use the full *Friendly Name*
  4. Open an elevated PowerShell prompt
  5. Set the execution policy of the local machine to be able to run scripts
  
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
  
  4. Run the script

    & 'Path\To\Clone\toggle-pnpdevice\toggle-pnpdevice.ps1'

  5. [Optional] Set up a Task Scheduler task to run the script automatically
  
     Open the Windows Task Scheduler -> Task Scheduler Library
     
     On the Toolbar click Action -> Create Task...
     
     *General*
     
     Security Options -> Run only when user is logged on
      
     *Triggers*
     
     New... -> Begin the Task -> At log on
      
     *Actions*
     
     New... -> Action -> Start a program
            -> Program/script -> Browse... -> Find and select your script
             
     *Conditions*
     
     These are up to you
