# Download words.zip from the website
Invoke-WebRequest `
    -Uri "http://pages.mtu.edu/~toarney/sat3310/lab04/words.zip" `
    -OutFile "$HOME\Documents\labs\SAT-3310---Lab-4\data\words.zip"

# Unzip the downloaded file
Expand-Archive `
    -Path "$HOME\Documents\labs\SAT-3310---Lab-4\data\words.zip" `
    -DestinationPath "$HOME\Documents\labs\SAT-3310---Lab-4\data" `
    -Force