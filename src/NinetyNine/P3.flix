/// P3: Find the N'th element of a list.
def nth(l: List[t], n: Int32): Option[t] =
    def aux(ll, count) = match ll {
        case Nil => None
        case x :: rest => if (count == n) Some(x) else aux(rest, count + 1)
    };
    aux(l, 0)

@Test
def testNth01(): Bool = Assert.eq(nth(1 :: 2 :: Nil, 0), Some(1))

@Test
def testNth02(): Bool = Assert.eq(nth(1 :: 2 :: Nil, 1), Some(2))

@Test
def testNth03(): Bool = nth(1 :: 2 :: Nil, 3) |> Option.isEmpty

@Test
def testNth04(): Bool = nth(Nil, 1) |> Option.isEmpty

@Test
def testNth05(): Bool = Assert.eq(nth("a" :: "b" :: "c" :: "d" :: "e" :: Nil, 2), Some("c"))

@Test
def testNth06(): Bool = nth("a" :: Nil, 2) |> Option.isEmpty
