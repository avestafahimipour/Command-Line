.event_type | sort -u
'select(.event_type=="alert") | .alert.signature ' | sort -u
'select(.event_type=="alert")  | select(.alert.severity==1) | .alert.signature ' | sort -u
'select(.event_type=="alert") | select(.alert.signature=="<signature-string>")'
'select(.event_type=="alert")  | select(.app_proto=="<protocol>") | {DST:.dest_ip , SRC:.src_ip} | join(",") '
