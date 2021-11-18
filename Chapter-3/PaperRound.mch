/* PaperRound
 * Author: Umeshika
 * Creation date: 11/18/2021
 */
MACHINE
    PaperRound

SETS
    DELIVERED = {yes, no};
    MESSAGE = {was_removed_successfully, not_in_the_set};
    ITEM = {magazine, paper}
    
VARIABLES
    houseset, magazines
    
INVARIANT
    houseset <: NAT1 & magazines <: NAT1
    
INITIALISATION
    houseset, magazines := {}, {}
    
OPERATIONS
    add(new) = 
    PRE 
        new : NAT1 & new /: houseset
    THEN 
        houseset := houseset \/ {new}
    END;
    
    ans1 <-- number =
    BEGIN
        ans1 := card(houseset)
    END;

    ans2 <-- getsPapers(houseNumber) =
    PRE 
        houseNumber : NAT1 & houseNumber : houseset
    THEN 
        ans2 := 1
    END;
    
    cancelPapers(houseNumber) =
    PRE 
        houseNumber : NAT1 & houseNumber : houseset
    THEN
        houseset := houseset - {houseNumber}
    END;
    
    ans3 <-- firsthouse =
    BEGIN
        IF 
            card(houseset) > 1
        THEN
            ans3 := min(houseset)
        ELSE
            ans3 := 0
        END
    END;
    
    ans4 <-- lasthouse =
    BEGIN
        IF 
            card(houseset) > 1
        THEN
            ans4 := min(houseset)
        ELSE
            ans4 := 0
        END
    END;

    ans5 <-- haspaper(houseNumber) =
    PRE 
        houseNumber : NAT1 
    THEN 
        IF
            houseNumber : houseset
        THEN
            ans5 := yes
        ELSE
            ans5 := no
        END
    END;
    
    ans6 <-- stopdelivery(houseNumber) =
    PRE 
        houseNumber : NAT1 & houseNumber : houseset
    THEN
        houseset := houseset - {houseNumber} || ans6 := was_removed_successfully
    END;

    deliverMagazine(houseNumber) =
    PRE
        houseNumber : NAT1 & houseNumber : houseset & houseNumber /: magazines
    THEN
        magazines := magazines \/ {houseNumber}
    END;
    
    stopMagazine(houseNumber) =
    PRE
        houseNumber : NAT1 & houseNumber : magazines
    THEN
        magazines := magazines - {houseNumber}
    END;
    
    ans7 <-- deliveries(houseNumber) = 
    PRE houseNumber : NAT1 & houseNumber : houseset \/ magazines
    THEN
        IF houseNumber : magazines
        THEN
            ans7 := magazine
        ELSE
            ans7 := paper
        END
    END;
    
    stopalldeliverys(houseNumber) =
    PRE
        houseNumber : NAT1 & houseNumber : houseset \/ magazines
    THEN
        houseset := houseset - {houseNumber} ||
        magazines := magazines - {houseNumber}
    END
    
END
