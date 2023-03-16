Lab - mycat
===========

Rewrite the `mycat.c` program by using `read`, `write`, `open` and
`close` instead of their library equivalents.

Then, generate a report with performance metrics between the existing
`cat` command and your `mycat`.  The format of the report is free, you
can add charts or whatever helps to understand the speed of both
approaches. Make sure that your report is submitted in your repository
as a pdf or txt file named `performance-report`. Your program is being
tested with a 1Gb file, you can play with different sizes to measure,
take a look in the [`Makefile`](./Makefile).

General instructions
--------------------
1. Use the [`mycat.c`](./cat2.c) file for your code.
2. Have fun and don't forget to push your code.


How to test
-----------
Below the command that will be used to test your code. Make sure it works in your side.

```
make test
make clean
```