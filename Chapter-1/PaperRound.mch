/* PaperRound
 * Author: Umeshika
 * Creation date: 10/22/2021
 */
MACHINE
    PaperRound
    
VARIABLES
    houseset
    
INVARIANT
    houseset <: NAT1
    
INITIALISATION
    houseset := {}
    
OPERATIONS
    add(new) = 
    PRE new : NAT1 & new /: houseset
    THEN 
        houseset := houseset \/ {new}
    END;
    
    ans <-- number =
    BEGIN
        ans := card(houseset)
    END;

    ans2 <-- getsPapers(houseNumber) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN 
        ans2 := 1
    END;
    
    cancelPapers(houseNumber) =
    PRE houseNumber : NAT1 & houseNumber : houseset
    THEN
        houseset := houseset - {houseNumber}
    END
    
END
