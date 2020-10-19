GeometryHasContact = 1
GeometryHasFoundation = 1

!Wapening locatie middelpunt: !Vanuit global origin
W_x = S_Breedte/2 - W_Dekking_x - W_Straal 
W_y = -W_Dekking_y - W_Straal

!W_Divisions = 2 !2 is minimum and default !More than 2 results in too many nodes!

!Wapening block size:
OB_size_height = W_Diameter + W_Dekking_y*2
OB_size_width = W_Diameter + W_Dekking_x*2
OB_fill_ratio = 0.5 !1 = full contact with edge == easier

Size_InnerBlock = W_Straal*0.96
Radius_InnerBlock = Size_InnerBlock / 0.675

!RailRotation = 2.86 !1 op 20 in degrees 
RailRotation = 1.43 !1 op 40 in degrees 

!AantalSleepers = 1 !Better to set this in the index-file and not as default so missing this parameter will create an obvious error.

!Set the element size of the sleeper. Base this on the size of the elements of the reinforcement. The value should ensure that all elements are valid and not strechted too much.
!A factor of 10 gives some aspect ratios of 31+ 
!0.3 follows from the smallest line in the reinforcement section 1-sqrt(0.5) = 0.293
ESIZE_Sleeper = MIN(7 ,(0.3*W_Straal / (W_Divisions))*(10/(W_Divisions))) !Test: 1 = 10, 2 = 5, 3 = 3.3, 4, 2.5

