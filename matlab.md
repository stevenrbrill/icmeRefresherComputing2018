# Introduction to MATLAB

## What is MATLAB?
MATLAB is short for "Matrix Laboratory." It is a scripting language that is designed for fast matrix operations and to be full of features for scientific computing. The software is proprietary and requires a license, so it is not free. Stanford offers discount licenses for personal use though the software store, free access on Farmshare, and free access in computer labs. For similar, free options, you can try out Octave, Python (with NumPy and SciPy), R, or Julia.

## Basics
* `x = 5` - Variables are defined with `=`
* `+` `-` `*` `/` - Basic math operations
* `==`, `<` `<=`, `~=` - Logical operations
* `sin(x)`, `cos(x)`, `exp(x)`, `sqrt(x)`, `round(x)` - Math functions
* `pi`, `i`, `Inf` - Special values
* `;` - At the end of lines suppresses output
* `%` - Comment
* `help <function>` - Show function documentation
* `clear` - Clears all saved variables (useful at the beginning of scripts)
* `clc` - Clears the command window (useful at the beginning of scripts)
* `close all` - Closes all figure (useful at hte beginning of scripts)
* If statements and loops are 
```matlab
if x < y
  % do something
end

for i = 1:N
  % do something
end

while x < y
  % do something
end
```

## Vectors and Matrices
* `y=[1,2,3]` - Row Vector
* `x=[1;2;3]` - Column Vector
* `A=[1,2,3;4,5,6;7,8,9]` - Matrix
* `A(1,2)` - Access entries in a matrix (Returns 2, in this example)
* `A(1,:)` - Access the first row of the matrix
* `A'` - Transpose
* `A*x` - Matrix Multiplication
* `x.*z` - Entry wise operation (Also works with `./` or `.^`)
* `x = A\b` - Solve matrix system
* `zeros(n,m)` - Creates an n by m matrix of zeros
* `ones(n,m)` - Creates an n by m matrix of ones
* `eye(n)` - Creates an n by n identity matrix
* `linspace(a,b,n)` - Creates a row vector of n linear values between a and b
* There are also specific matrix formats to use for sparse/structured matrix computations

## Functions
Simple inline function handles can be created like:
```matlab
my_f = @(x) sin(x)+cos(x);

val = my_f(3/4*pi);
```

Full functions can be created with the follow syntax:
```matlab
function [out_1,out_1] = my_fun_name(in_1,in_2)
  % [out_1,out_1] = my_fun_name(in_1,in_2)
  % Description of function in comments makes it appear with 'help' command
  
  <function body>
  
end
```
* A function should be put into a separate file titled `my_fun_name.m` (With the function name as the title). This makes it so you can easily call the function with import statements
* After the word `function` put he output values. When the function finishes running, it will return these values.
* On the right side of the equals is the function name followed by the input arguments
* If you put comment lines at the top of a function, those lines will appear with the `help` command
* Then you put the body of the function 
* Then you end it with `end`

## Plotting

## Useful tools and packages
