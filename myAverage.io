List myAverage := method(if(select(type != Number type) size == 0, average, Exception raise("include not Number")))

/*
 * if the following defined method
 *
 * List myAverage := method(average)
 *
 * Io> list(1,2,3,"") myAverage
 *
 *   Exception: argument 0 to method '+' must be a Number, not a 'ImmutableSequence'
 *   ---------
 *   +                                   [unlabeled] 0
 *   List reduce                          A3_List.io 3
 *   List sum                             A3_List.io 6
 *   List average                         Command Line 1
 *   List myAverage                       Command Line 1
 */

myAverageTest := UnitTest clone do(
    assertEquals( 2, list(1,2,3) myAverage )
    // Indistinguishable user defined Io Exception by this test
    assertRaisesException( list(1,2,3,"") myAverage )
)
