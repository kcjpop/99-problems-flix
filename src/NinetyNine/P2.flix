/// P2: Find the last but one (last and penultimate) elements of a list.
mod P2 {
    pub def lastTwo(l: List[t]): Option[(t, t)] = match l {
        case Nil => None
        case x :: y :: Nil => Some((x, y))
        case _ :: rest => lastTwo(rest)
    }
}

@Test
def testLastTwo01(): Bool = Assert.eq(Some((1, 2)), P2.lastTwo(1 :: 2 :: Nil))

@Test
def testLastTwo02(): Bool = P2.lastTwo(1 :: Nil) |> Option.isEmpty

@Test
def testLastTwo03(): Bool = P2.lastTwo(Nil) |> Option.isEmpty
