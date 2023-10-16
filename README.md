# B-Method

<li> B method is a formal software development method that supports all stages of the software life-cycle in a uniform and formal way. </li>
<li> The main components are B models and proofs. </li>
<li> A B-model is a collection of components called machines. </li>
<li> B models are written in its formal specification language called Abstract Machine Notation (AMN). </li>
<li> An abstract machine has a name, local state and an interface. </li>

# AtelierB and ProB

<li> AMN is a wide spectrum pseudo-programming language that covers both abstract specifications and implementation level code. </li>
<li> B method is supported by CASE tools: AtelierB and ProB.</li>
AtelierB - syntax, type checking, theorem prover <br>
ProB - animator

# Chapter-1 : Setting up and Using AtelierB and ProB
Steps for Setting up and Using AtelierB:
<ol>
  <li> Create a workspace for all the B specification projects.</li>
  <i>Atelier B > New > Workspace</i>
  <li> Set the default project directory.</li>
  <i>Atelier B > Preferences > Project</i>
  <li> Create a project.</li>
  <i>Atelier B > New > Project</i>
  <li> Add components to the B specification.</li>
  <i>Atelier B > New > Component</i>
  <li> Start typing by double clicking the orange box.</li>
</ol>

Steps for Setting up and Using ProB:
<ol>
  <li> Once the machine has been syntax & type checked and there are no errors, animate it using the ProB animator.
  <li> Open the machine file created in AtelierB.</li>
  <i>File > Open</i>
  <li> To begin animation, double click on INITIALISATION.</li>
</ol>

Scenario:
<p>A paper round manager keeps track of houses that receive deliveries. It uses a state variable houseset & has four operations: add, number, getsPapers & cancelPapers.</p>

# Chapter-2 : Sets
<li>A set is a collection of values called elements or members and all the members of a set must be of the same type.</li>
<li>Set doesn’t include duplicate values.</li>
<li>The power set [ P(X) ] of a set X is the set containing all the subsets of X.</li>
<p>card( P(X) ) = 2<sup>card(X)</sup></p>
<li>A set comprehension has the general form:</li>
<p>{ variable | variable ∈ TYPESET ∧ variableCondition }</p>
<li>The syntax of an enumerated set is:</li>
<p>ENUMERATED SET = { element1, element2, . . . , elementn }</p>
<li>When a deferred set is declared the actual elements of the set are not specified.</li>

# Chapter-3 : Abstract Machine Notations
<li>Sets must be written all in UPPERCASE.</li>
<li>Constants must be written all in lowercase.</li>
<li>In the B tools, variable names must be at least two characters long.</li>
<li>Components of an operation are operation interface, precondition, body</li>
<li>An operation is usually described using PRE-THEN-END.</li>
<li>If the precondition is just true, then we can just use BEGIN-END.</li>
<li>An operation’s body is called a substitution.</li>
<br>
Scenario-1:
<p>The club is parameterised on a set of NAMEs for its members & the maximum capacity for members. Before a person can join the club, i.e. be on the members list, they must first be on the waiting list. Both lists have a maximum size & no one can be on both.There are five club operations: join, join_queue, remove, semi_reset & is_member.</p>

# Chapter-6 : paperround.mch.
<li>You should create it in a file called paperround.mch.</li>
<li>Add an enquiry operation getspapers( housenumber ) that checks if the housenumber has papers delivered to it. f it does then it outputs the number 1.</li>
<li>Add a delete( housenumber ) operation that deletes a house number from the set of house numbers that are delivered to.</li>