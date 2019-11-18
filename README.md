# ComputerProgramsForTheKitchen

These are programs in BASIC from Computer Programs for the Kitchen 
by Terence F. Dicker

They need AppleSoft BASIC, and there's a handy online version at
https://www.calormen.com/jsbasic/


WeightConversion.bas is the code from the book to convert weights
It doesn't work. It's something about 
1040 HTAB ((40- LEN(T$)) / 2 + 1)

If I put a number in the () after HTAB, it works. If I change HTAB to
PRINT, it works. But for some reason it won't work together.



WeightConversion-working.bas sort of works. It uses a common index
It doesn't ALWAYS work, but at least it runs

Also, it's wrong and I don't think that's the result of my edit. For example,
if I have line 1040 print ((40- LEN(T$)) / 2 + 1)
on input 5,4
it prints 8
If i then hard code that 8 so the line reads
1040 HTAB (8)
on input 5,4 (for 5 pounds, 4 oz), it says the decimal value is 7.5?
Also, if I run it a second time, it has an error on the input.

Enjoy!
