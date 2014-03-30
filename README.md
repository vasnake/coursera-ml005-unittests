coursera-ml005-unittests
========================

Formal unit tests for Coursera Machine Learning ml-005 instructed by Andrew Ng

To run the tests, follow these steps:

1. clone the git repository to your machine. Here I'll use 'f:/ml005ut':

    `git clone git@github.com:cod3monk3y/coursera-ml005-unittests.git f:/ml005ut`

2. launch Octave and add the directory for the current assignment to your load path. For example, ex2 (Logistic Regression) would use:

    `>> addpath('f:/ml005ut/ex2/')`

3. run the tests!

    `>> test test_ex2`
    
    `PASSED 6 out of 6 tests`
    
Conventions and Guidelines
==========================
    
* vectors are represented as __column vectors__ unless they are required to be row vectors by the submit script. 
* all unit tests that I submit here are passing, and the code I tested against these tests has been accepted by the submit script.


Adding your own tests
=====================
Feel free to fork this project and send me pull requests! 

To add your own tests, create a new function like `test_foo.m` and add a line to `test_ex2.m`:

    %!test test_foo()
    
Please __do not commit any nonworking unit tests__!!! 
    
Thanks, and I hope this helps everyone out!
