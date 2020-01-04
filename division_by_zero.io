Number / = method(n, if(n == 0, 0, Number getSlot("/")))

DivisionByZeroTest := UnitTest clone do(
    assertEquals( (1 / 0), 0 )
)
