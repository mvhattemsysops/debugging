
function Start-RPSGame {
    param (
        $NoOfRounds
        )

    $Round =1

    while($Round -le $NoOfRounds)
        {
            for ($RPSCounterDisp = 1; $RPSCounterDisp -le 3; $RPSCounterDisp++){
                switch ($RPSCounterDisp){
                    1 {write-output "Rock"}
                    2 {write-output "Paper"}
                    3 {write-output "Scissors"}
                }
            Start-Sleep -Milliseconds 500
            Write-OutRPSOption
            $Round++
            Write-output "`n`n"
            Start-Sleep -Seconds 2
            }
        }

    }


function Write-OutRPSOption {
    $RPSChoice = get-random -Minimum 1 -Maximum 9
    write-verbose "Random number was $RPSChoice"
    switch ($RPSChoice) {
        {$PSItem -ge 1 -and $PSItem -le 3} {write-output "** ROCK **"}
        {$PSItem -ge 4 -and $PSItem -le 6} {write-output "** PAPER **"}
        {$PSItem -ge 7 -and $PSItem -le 9} {write-output "** SCISSORS **"}
    }
}


#main execution block
Write-Output "three rounds of rock, paper, scissors"

Start-Sleep -Seconds 1

write-output ""

Start-RPSGame(3)

Write-Output "`nThanks for playing"