/// P7: Flatten a nested list structure.

mod P7 {
    pub def flatten(l: List[List[a]]): List[a] =
        def aux(ll, acc) = match ll {
            case Nil => acc
            case x :: xs => aux(xs, (acc ::: x))
        };
        aux(l, Nil)
}

@Test
def testFlatten01(): Bool = Assert.eq(1 :: 2 :: Nil, P7.flatten((1 :: 2 :: Nil) :: Nil))

@Test
def testFlatten02(): Bool = Assert.eq(1 :: 2 :: 3 :: Nil, P7.flatten(((1 :: Nil) :: (2 :: 3 :: Nil) :: Nil)))
