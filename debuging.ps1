
function Start-RPSGame {
    param (
        $NoOfRounds
        )

    $Round =1

    while($Round -le $NoOfRounds)
        {
            for ($RPSCounterDisp = 1; $RPSCounterDisp -lt 3; $RPSCounterDisp++)
                switch ($RPSCounterDisp){
                    1 {write-output "Rock"}
                    2 {write-output "Paper"}
                    3 {write-output "Scissors"}
                }
            Start-Sleep -Milliseconds 500
            Write-OutRPSOption
        }

    }


function Write-OutRPSOption {
    $RPSChoice = get-rando -Minimum 1 -Maximum 9
    write-verobse "Random number was $RPSChoice"
    switch ($RPSChoice) {
        {PSItem -gt 1 -and $PSItem -lt 3} {write-output "** ROCK **"}
        {PSItem -gt 4 -and $PSItem -lt 6} {write-output "** PAPER **"}
        {PSItem -gt 7 -and $PSItem -lt 9} {write-output "** SCISSORS **"}
    }
}








#main execution block
Write-Output "three rounds of rock, paper, scissors"

Start-Sleep -Seconds 1

write-output ""

Start-RPSGame(3)

Write-Output "`nThanks for playing"