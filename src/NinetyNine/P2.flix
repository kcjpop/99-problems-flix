/// P2: Find the last but one (last and penultimate) elements of a list.
def lastTwo(l: List[t]): Option[(t, t)] = match l {
    case Nil => None
    case x :: y :: Nil => Some((x, y))
    case _ :: rest => lastTwo(rest)
}

@Test
def testLastTwo01(): Bool = Assert.eq(Some((1, 2)), lastTwo(1 :: 2 :: Nil))

@Test
def testLastTwo02(): Bool = lastTwo(1 :: Nil) |> Option.isEmpty

@Test
def testLastTwo03(): Bool = lastTwo(Nil) |> Option.isEmpty
