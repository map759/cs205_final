# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called best_pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way best_pokemon.dat is formatted.

#This is for the file .dat

#!/bin/bash

# Get the file
filename=$1

# using awk to calculate the total of pokemon and store it in a total variable
total=$(awk 'END {print NR}' $filename)

# This is to calculate the average health points ans store it in a hp_avg variable
avg_hp=$(awk '{sum += $6} END {print sum / NR}' $filename)

# This is to calculate the average attack and store it in a attack_avg variable
attack_avg=$(awk '{sum += $7} END {print sum / NR}' $filename)

# This will show the summary using echo
echo "======= SUMMARY OF $filename ======"
echo "# Total Pokemon: $total"
echo "# Avg. HP: $avg_hp"
echo "# Avg. Attack: $attack_avg"
echo "# ======= END SUMMARY =======#"
