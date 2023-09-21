* Example 3.11: $x₁ = -x₂ - 2x₃ - 3x₅ + x₆$ and the following sentence
  talking about $x₂$ is incorrect.
* Exercise 4.2.12: should be:
    2. Show that if D(n) is the set of diagonal matrices in SP(n), then D(n) is a normal subgroup of SP(n). 
    3. Show SP(n)/D(n) is isomorphic to P(n). 
* Exercise 5.1.15: uses symbols O and * not defined anywhere.
* Exercise 6.4.14: "Let W and X ..."
* Exercise 6.4.21: in the denominator, $p^n$ should be $p^m$
* Exercise 6.4.23: part 2 is impossible. See ex6.4.23.py
  See https://mathworld.wolfram.com/LightsOutPuzzle.html
* Proposition 6.23: second sentence before the last should be: v = w + y = w' + y'
* Definition 6.19: u = w/(w, w)^1/2 is obviously wrong. I think it's u = w/(v, u)
* Exercise 6.6.7, part 3: r1 is never defined.
* Proposition 6.43 has several errors
    * (i) should be d(u, v) = 0 iff u = v
    * (iii) The proof swaps v and w
* Exercise 6.8.3: (ii) the ISBN number incorrectly has 9 digits
* Exercise 7.1.1: (i) ψ : Y → X (the F(X) is wrong)
* Exercise 7.1.15: A^p means exponentiating the elements of A, not matrix multiplication p times:
    ```
    sage: K = GF(5)
    sage: A = matrix([[K.random_element(), K.random_element()], [K.random_element(), K.random_element()]])
    sage: B = matrix([[K.random_element(), K.random_element()], [K.random_element(), K.random_element()]])
    sage: F = lambda A: A^5
    sage: F(A + B) == F(A) + F(B)
    False
    ```
* 7.3.3, "A reflection Pu" should instead say "A projection Pu" (sentence before final equation)
* 7.3.3, the final equation has an extra ) for Pu((v·u)u))
* Definition 7.4: the equation for Q² = (I2 ... The 2 is a typo.
* Exercise 7.3.9, part (iv): minor point but the 0 should be bold since it's ∈ ℝᵐ
* Section 8.1: on the last page before the exercises, the determinant is given in terms of the trace. But the actual formula given is 6 det(A)
* Exercise 8.1.26: B and AB (or BA) do not have the same characteristic polynomial.
* Exercise 8.1.28: (iii) set a = -1, b = -1, c = -2, then det(A) = 4 contradicting the claim that det(A) ≤ 0.
* Exercise 8.2.9: refers to a strange expression in Section 5.1 but it's not clear what it's referring to.
* Exercise 8.3.7: should say "first quadrant and another in SECOND quadrant"
* Exercise 8.3.20: taking Tᵖ to be matrix multiplication, then the supplied claim that μ is linear is easily demonstrated to be false with a counter example. Assuming it is the frobenius on matrix cells, then the question makes little sense since over 𝔽ₚ then μ is simply the identity map.

