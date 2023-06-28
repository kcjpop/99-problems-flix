/// P4: Find the number of elements of a list.
mod P4 {
    pub def length(l: List[t]): Int32 =
        def aux(ll, count) = match ll {
            case Nil => count
            case _ :: rest => aux(rest, count + 1)
        };
        aux(l, 0)
}

@Test
def testLength01(): Bool = Assert.eq(3, P4.length(1 :: 2 :: 3 :: Nil))

@Test
def testLength02(): Bool = Assert.eq(2, P4.length(1 :: 2 :: Nil))

@Test
def testLength03(): Bool = Assert.eq(0, P4.length(Nil))
