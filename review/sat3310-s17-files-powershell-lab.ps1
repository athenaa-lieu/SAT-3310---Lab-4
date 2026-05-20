# Variables
$defaultdir =
"c:\Users\Admin\Documents\lab06\data"
$nounsfile = "nouns.txt"
$agentnounsfile = "agentnouns.txt"

# List files
Get-ChildItem -Path $defaultdir

# Put words into a list
$nouns = Get-Content
$defaultdir\$nounsfile
$agentnouns = Get-Content
$defaultdir\$agentnounsfile

# Count words
$numnouns = $nouns.count
$numagentnouns = $agentnouns.count

# Print counts
# Method 1
Write-Host "There are $numnouns nouns
in $nounsfile"
Write-Host "There are $numagentnouns
agent-nouns in $agentnounsfile"

# Print counts
# Method 2
Write-Host $nounsfile
$nouns | Measure-Object -Word
Write-Host $agentnounsfile
$agentnouns | Measure-Object -Word

# Random select
$randomnoun = $nouns | Get-Random
$randomagentnoun = $agentnouns | Get-
Random

# Print words
Write-Host "You are a $randomnoun
$randomagentnoun !"

# Done