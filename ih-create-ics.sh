output_ics_file=$1
event_date=$2
event_title=$3

sequence=$(date +%s)
cat >> ${output_ics_file} <<EOF
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Manual//NONSGML My Product//EN
BEGIN:VEVENT
UID:${event_date}
SEQUENCE:${sequence}
DTSTAMP:19970714T170000Z
ORGANIZER;CN=John Doe:MAILTO:john.doe@example.com
DTSTART;TZID=America/New_York:${event_date}T080000
DTEND;TZID=America/New_York:${event_date}T170000
SUMMARY:${event_title}
END:VEVENT
END:VCALENDAR
EOF
