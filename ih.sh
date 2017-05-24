ics_file=ical-holiday.ics
> ${ics_file}

for (( i=1; i<=$#; i++)); do

./ih-create-ics.sh "${!i}"
    
done

