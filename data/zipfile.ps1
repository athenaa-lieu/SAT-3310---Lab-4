# Download words.zip from the website
Invoke-WebRequest `
    -Uri "http://pages.mtu.edu/~toarney/sat3310/lab04/words.zip" `
    -OutFile "$HOME\Documents\SAT-3310---Lab-4\data\words.zip"

# Unzip the downloaded file
Expand-Archive `
    -Path "$HOME\Documents\SAT-3310---Lab-4\data\words.zip" `
    -DestinationPath "$HOME\Documents\SAT-3310---Lab-4\data" `
    -Force