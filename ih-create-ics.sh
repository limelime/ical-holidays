holiday=$1
ics_file=ical-holiday.ics

cat >> ${ics_file} <<EOF
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Manual//NONSGML My Product//EN
BEGIN:VEVENT
UID:uid1@example.com
DTSTAMP:19970714T170000Z
ORGANIZER;CN=John Doe:MAILTO:john.doe@example.com
DTSTART;TZID=America/New_York:${holiday}T080000
DTEND;TZID=America/New_York:${holiday}T170000
SUMMARY: Public Holiday - Montreal
END:VEVENT
END:VCALENDAR
EOF
