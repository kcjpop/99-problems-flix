/// P1: Write a function that returns the last element of a list
def last(l: List[t]): Option[t] = match l {
    case Nil => None
    case x :: Nil => Some(x)
    case _ :: rest => last(rest)
}

@Test
def testLast01(): Bool = Assert.eq(Some(2), last(1 :: 2 :: Nil))

@Test
def testLast03(): Bool = Assert.eq(Some("fun"), last("fun" :: Nil))

@Test
def testLast02(): Bool = last(Nil) |> Option.isEmpty
