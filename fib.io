fib := method(i, if(i < 3, 1, fib(i - 2) + fib(i - 1)))

FibTest := UnitTest clone do(
    assertTrue( fib(1) == 1 )
    assertTrue( fib(2) == 1 )
    assertTrue( fib(3) == 2 )
    assertTrue( fib(4) == 3 )
    assertTrue( fib(5) == 5 )
    assertTrue( fib(6) == 8 )
    assertTrue( fib(7) == 13 )
    assertTrue( fib(8) == 21 )
)

for (n, 1, 8, fib(n) println)
