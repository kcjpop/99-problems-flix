// P1: Write a function that returns the last element of a list
def last(l: List[t]): Option[t] = match l {
    case Nil => None
    case x :: Nil => Some(x)
    case _ :: rest => last(rest)
}

@Test
def test_last_01(): Bool = Assert.eq(last(1 :: 2 :: Nil), Some(2))

@Test
def test_last_03(): Bool = Assert.eq(last("fun" :: Nil), Some("fun"))

@Test
def test_last_02(): Bool = last(Nil) |> Option.isEmpty
