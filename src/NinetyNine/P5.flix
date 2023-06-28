/// P5: Reverse a list.
def rev(l: List[t]): List[t] =
    def aux(ll, acc) = match ll {
        case Nil => acc
        case x :: rest => aux(rest, x :: acc)
    };
    aux(l, Nil)

@Test
def testRev01(): Bool = Assert.eq(3 :: 2 :: 1 :: Nil, rev(1 :: 2 :: 3 :: Nil))

@Test
def testRev02(): Bool = Assert.eq(2 :: 1 :: Nil, rev(1 :: 2 :: Nil))

// @Test
def testRev03(): Bool = Assert.eq(rev(Nil) |> List.length, 0)
