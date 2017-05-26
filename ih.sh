input_file=$1

# Output file.
  ics_file=ical-event_date.ics
  > ${ics_file}

# Create icalendar file.
  while IFS='' read -r file_line || [[ -n "${file_line}" ]]; do

    if echo "${file_line}" | grep -q ';' ; then
      event_date=$(echo "${file_line}" | cut -d';' -f1)
      event_title=$(echo "${file_line}" | cut -d';' -f2)    
    else
      event_date=${file_line}
      event_title=''
    fi
    
    ./ih-create-ics.sh "${event_date}" "${event_title}"
   
  done < <( cat ${input_file} | grep -v "^#"  | awk NF) # Ignore comment line | Remove empty line

echo "All holidays created in ${ics_file}."
