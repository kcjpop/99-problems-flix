/// P3: Find the N'th element of a list.
mod P3 {
    pub def nth(l: List[t], n: Int32): Option[t] =
        def aux(ll, count) = match ll {
            case Nil => None
            case x :: rest => if (count == n) Some(x) else aux(rest, count + 1)
        };
        aux(l, 0)
}

@Test
def testNth01(): Bool = Assert.eq(Some(1), P3.nth(1 :: 2 :: Nil, 0))

@Test
def testNth02(): Bool = Assert.eq(Some(2), P3.nth(1 :: 2 :: Nil, 1))

@Test
def testNth03(): Bool = P3.nth(1 :: 2 :: Nil, 3) |> Option.isEmpty

@Test
def testNth04(): Bool = P3.nth(Nil, 1) |> Option.isEmpty

@Test
def testNth05(): Bool = Assert.eq(Some("c"), P3.nth("a" :: "b" :: "c" :: "d" :: "e" :: Nil, 2))

@Test
def testNth06(): Bool = P3.nth("a" :: Nil, 2) |> Option.isEmpty
