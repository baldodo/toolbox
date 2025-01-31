BEGIN {
}
/^\s*$/ { if (!code) {print ".br"} else {print ""}; next }
/^= / {
   cmd=$2
   print ".TH "cmd" \"1\" \""strftime("%F")"\" \"toolbox\" \"toolbox command\""
   next
}
/^== / {
   print ".SH " $2
   next
}
/^=== / {
   print ".SS "
   print $2" "$3" "$4" "$5
   next
   }
/^\(#/ { code=1; print ".EX"; next }
/^#\)/ { code=0; print ".EE"; next }
{ 
    if (!code) {
       print ".PP"
       gsub("-","\\-")
    }
    gsub("\\[\\[","\\fB")
    gsub("\\]\\]","\\fR")
    gsub("\\(\\(","\\fI")
    gsub("\\)\\)","\\fR")
print $0
}
