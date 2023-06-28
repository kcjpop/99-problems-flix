/// P4: Find the number of elements of a list.
def length(l: List[t]): Int32 =
    def aux(ll, count) = match ll {
        case Nil => count
        case _ :: rest => aux(rest, count + 1)
    };
    aux(l, 0)

@Test
def testLength01(): Bool = Assert.eq(3, length(1 :: 2 :: 3 :: Nil))

@Test
def testLength02(): Bool = Assert.eq(2, length(1 :: 2 :: Nil))

@Test
def testLength03(): Bool = Assert.eq(0, length(Nil))
