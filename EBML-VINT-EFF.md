# EBML-VINT-EFFName: EBML vint efficiency
Authority: EBML Specification
Target format: EBML
Target format part: EBML Structure
Citation: 
Severity: 1
Definition: Section 2.2 "IDs are always encoded in their shortest form e.g. 1 is always encoded as 0x81 and never as 0x4001." The bits following the Element ID's Length Descriptor are not more than (8 - ${bit-length-of-length-descriptor}) successive 0 bits i.e. vint is expressed as efficiently as feasible.
Reference file: inefficient_elementid.mkv
Manager: MediaConch
Note: to do
