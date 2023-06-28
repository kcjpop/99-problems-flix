/// P6: Find out whether a list is a palindrome.
mod P6 {
    pub def isPalindrome(l: List[a]): Bool with Eq[a] =
        l == List.reverse(l)
}

@Test
def testIsPalindrome01(): Bool = Assert.eq(true, P6.isPalindrome(1 :: 2 :: 3 :: 2 :: 1 :: Nil))

@Test
def testIsPalindrome02(): Bool = Assert.eq(false, P6.isPalindrome(1 :: 2 :: Nil))
