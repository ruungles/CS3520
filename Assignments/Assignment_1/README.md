# Programming Assignment 1 CS3520 Spring 2025

## Project Description

This project is an introduction to the concepts of **LISP** through practice of writing functions to solve the following problems.

1. Flip alternate elements of a list. That is, if the input is (a<sub>1</sub> a<sub>2</sub> a<sub>3</sub> a<sub>4</sub> ... a<sub>n</sub>) then the output would is (a<sub>2</sub> a<sub>1</sub> a<sub>4</sub> a<sub>3</sub> ... a<sub>n</sub> a<sub>n-1</sub>). If *n* is odd, a<sub>n</sub> remains at the end. Function name is **flip**
2. Given an input list **L** and an integer **i**, returns a copy of **L** with the **i**th element deleted. If the length of **L** is less than **i**, return **L**
3. Takes a list of integers (a<sub>1</sub> a<sub>2</sub> ... a<sub>n</sub>) and computes the product of all terms: (a<sub>i</sub> - a<sub>j</sub>), where i < j   
that is, computes the product of all differences between elements, with the element appearing later on the list subtracted from the element appearing first. For example for the list:
    (3,2,1)
the function compmutes:
    (3-1) * (3-2) * (2-1) = 2
If the list is empty, the function returns **l**. Name of the function is **product-of-diff**.