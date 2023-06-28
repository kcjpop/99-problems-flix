/// P1: Write a function that returns the last element of a list
mod P1 {
    pub def last(l: List[t]): Option[t] = match l {
        case Nil => None
        case x :: Nil => Some(x)
        case _ :: rest => last(rest)
    }
}

@Test
def testLast01(): Bool = Assert.eq(Some(2), P1.last(1 :: 2 :: Nil))

@Test
def testLast03(): Bool = Assert.eq(Some("fun"), P1.last("fun" :: Nil))

@Test
def testLast02(): Bool = P1.last(Nil) |> Option.isEmpty
