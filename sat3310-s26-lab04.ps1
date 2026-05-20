# SAT 3310 - Lab 4
# Created by Athena Lieu (xlieu@mtu.edu)
# Date: May 19th, 2026
# Comments: The program opens two files,
# counts the number of words,
# stores the words in an array,
# randomly selects a word from the array,
# and prints it to the console.

# Variables

# Set the default directory where the files are located
$defaultdir = "C:\Users\sat3310\Documents\labs\SAT-3310---Lab-4\data"

# Set the filenames for the nouns and agent nouns
$nouns = "nouns.txt"
$agentnouns = "agentnouns.txt"

# Initialize arrays to hold the words from the files
$nouns_array = @()
$agentnouns_array = @()

# Main Program

# List files in the default directory to verify that the files we need are present
Get-ChildItem -Path $defaultdir
# This command lists all the files in the specified directory, allowing us to confirm that nouns.txt and agentnouns.txt are available before we attempt to read them.
# If the files are not listed, we will know that there is an issue with the file path or that the files are missing, which we can then address before proceeding with the rest of the program.
# By listing the files, we can also see if there are any other files in the directory that might be relevant or if there are any potential naming issues that could cause problems when we try to read the files later on.
# This step is crucial for debugging and ensuring that our program has access to the necessary resources before we attempt to read and process the data from the files.

# Put words into a list
# Read the contents of the nouns file and store it in the nouns_array
# Get-Content reads the contents of the specified file and returns it as an array of lines
$nouns_array = Get-Content "$defaultdir\$nouns"
# Read the contents of the agent nouns file and store it in the agentnouns_array
$agentnouns_array = Get-Content "$defaultdir\$agentnouns"

# Count words
# Count the number of words in the nouns_array and store it in num_nouns
$num_nouns = $nouns_array.Count
# Count the number of words in the agentnouns_array and store it in num_agentnouns
$num_agentnouns = $agentnouns_array.Count

# Print counts
# Print the number of nouns and agent nouns to the console
Write-Host "There are $num_nouns nouns in $nouns"
Write-Host "There are $num_agentnouns agent nouns in $agentnouns"

# Random select
# Randomly select a noun from the nouns_array and store it in random_noun
$random_noun = Get-Random -InputObject $nouns_array
# Randomly select an agent noun from the agentnouns_array and store it in random_agentnoun
$random_agentnoun = Get-Random -InputObject $agentnouns_array

# Print words
# Print a message to the console that combines the randomly selected noun and agent noun
Write-Host "Randomly selected noun: $random_noun"
Write-Host "Randomly selected agent noun: $random_agentnoun"

# Done