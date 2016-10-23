# EBML-ELEM-SIZE-7FName: Element Size 0x7F Reservation
Authority: EBML Specification
Target format: EBML
Target format part: EBML Element Size
Citation: 
Severity: 1
Definition: "Note that the shortest encoding form for 127 is 0x407f since 0x7f is reserved." Provide a warning if the Element Size is set to 0x11111111 but element size is actually 127 bytes.
Note: This coincidence waiting to resolve unknownsizeallowed attribute.
