Once upon a time... ->start
==start==
 + go back. ->knot
 +There were four lines of content. ->knot2
 +choose this  ->knot3
 +another ->knot4
 +{knot4} here is choice five - you cant choose this until you do something (conditional)
->END


==somethingelse==
*choice -> choice
*choice 2  -> choice2
*->fallback
->END

=choice 
-> somethingelse

=choice2 
-> somethingelse

=fallback
hello
->somewherenew


==somewherenew==
->END

==knot== 
{~1|2|3|4|5} 
shuffle
->start

==knot2==
{&1|2|3|4|5}
cycle
-> start
    
==knot3==
{!1|2|3|4|5}
once only
-> start

==knot4==
{1|2|3|4|5}
sequence
-> start
