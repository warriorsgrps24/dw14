%dw 2.0
output application/json
import * from dw::Runtime
var formats = ["dd/MM/YYYY", "dd-MM-YYYY"]
---
(if(payload contains "T")
    payload as Date
else 
    formats map (
        (payload as Date {format:$}))) as Date {format : "dd/MM/YYYY"} 

//using if else condition to write date on date format as date