***************************************
*                                     *
*  M.L. PART FIVE   BY DR. FIRMWARE   *
*                                     *
***************************************

This part is going to be about the     
arithmetic and logic unit of the 6502. 
The ALU is what does the addition and  
subtraction and bit operations.        
Presently, we will only cover the math,
leaving the bit operations for later.  

If you read the previous column, you   
will have noticed that the CMP         
'subtracts' two numbers. this          
subraction takes place in the ALU.     

To subtract two numbers, we use the SBC
command. In immediate addressing mode, 
the arguement is subtracted from the   
value currently held in accumulator,   
and the result is then put back into   
the accumulator. It is a fairly simple 
procdure, but this is not all there is 
to it. First of all, negative numbers  
are represented as $100+the number.    
Also, there is the carry flag to deal  
with. This flag was put into the       
formula so that calculations involving 
numbers greater than 255 (that is 1    
byte) could be simplified. Once the    
result of the A - arguement is fonud,  
then the oppisite (techniquely called  
the two's complement, see below) of the
carry (that is, if C=1, then use 0 and 
vice versa) is subtracted from the     
result. (The carry is a one bit flag   
and can only hold 0 or 1, so if it is  
set the wrong way, the answer will be  
off by one.) Since we want to use this 
command to produce right results, we   
must set C=1. This is done by an SEC.  
To subtract 2 numbers, the following   
routine should be used.

SEC
LDA #FIRST NUMBER
SBC #SECOND NUMBER

The SBC command also has absolute,     
indexed X and Y modes.

Adding.

Adding numbers is very similar to      
subtraction. The ADC (add with carry   
not analog to digital converter)       
command adds the value in the          
accumulator to the arguement plus what 
the carry flag is set to. To set the   
carry to 0, we use CLC. Here's the     
routine:

CLC
LDA #FIRST NUMBER
ADC #SECOND NUMBER

And your desired result is in the      
accumulator. As we said earlier, the   
way the carry functions allows us to   
add mutli-byte numbers easily. Suppose 
we have two 3-byte long numbers. We    
will represent these numbers by the    
following method. N1 will be used to   
denote the first number and N2 the     
second. B1 will be used to denote the  
left-most (MSB) of each number and B2  
B3 as the successive bytes. So the     
numbers are N1B1.N1B2.N1B3, and        
N2B1.N2B2.N2B3. We will add the LSB's  
first and then follow with the middle  
bytes and finally the MSB's. For the   
LSB's, we will set the carry to zero.  
This will give us the answer we want   
for the LSB of the result (RB3). After 
storing RB3 in it's proper place, we   
will then add N1B2 and N2B2 together,  
leaving the carry as it is. After an   
addition is made, the carry is set to  
0 if the result is less than 255, and  
set to 1 if it is greater than 255. The
result can range from 0 to 510, which  
can be represented in 9 bits, C+ the   
accumultor. Now if the result is       
greater than 255 for the LSB's, we want
to add one to the next result of the   
middle bytes. This is automaticly done 
by the carry. So, here is the routine:


CLC
LDA #N1B3
ADC #N2B3
STA (THE ADDRESS OF) RB3
LDA #N1B2
ADC #N2B2
STA (THE ADDRESS OF) RB2
LDA #N1B1
ADC #N2B1
STA (THE ADDRESS OF) RB1
RTS

The result is C.RB1.RB2.RB3. The reason
why the carry is at the top is because 
if you add $FFFFFF and $FFFFFF you get 
$1FFFFFE. The one is the carry. It is  
advisable to set up 'registers' in RAM 
so that a generalized addition routine 
can be utilized. What it means is that 
you've set aside nine byte (say $300 to
$308) to be three 3-byte registers. One
from $300-$302, which would be where N1
would be stored, another from $303-$305
, resting place for N2, and the last   
from $306-$308, for the result (R). You
would have to figure out something with
the carry though. To help you with this
there are two branch commands BCC and  
BCS which branch on carry clear (C=0)  
and carry set (C=1), respectively.

Another possibility is to make an      
indexed addition routine using the X   
register as a counter. Though I won't  
give the code here, by examining the   
code given in the previous column and  
the addition routine, it can be worked 
out quite simply.

To subtract multi-byte numbers, we can 
use the same routine as above, except  
replacing the CLC with a SEC and the   
ADC's with SBC's. This works, though   
the result would now be RB1.RB2.RB3    
with the carry telling you whether the 
result is negative or positive. If C=1 
then the result is positive and vice   
versa. However, if the result is       
negative, the number is represented as 
$1000000+result.

Next time round: assemblers, monitor,  
and other fun stuff.

***************************************
*                                     *
* CALL THESE BOARDS:                  *
*    TESTAMENT: (514)-332-6852        *
*    GAMMA-LINE: (514)-683-9176       *
*    TRANSFERS II AE/CAT: 738-1247    *
*                                     *
***************************************

Oh yeah, since you asked, 2's          
complement is gotten by taking the next
highest power of 2, and subtracting one
form it. Then, subtract your number    
from that result and voila. For example
the next highest power of 2 after 1, is
2. Minus one is one and then 1-1=0.

The negative numbers sort of work on   
the same principle, except, the one is 
not subtracted and it is the 256's     
complment.

So long for now..
