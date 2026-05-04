import Mathlib

/-!
# Euclid's lemma

If a prime `p` divides `a * b`, then `p ∣ a` or `p ∣ b`.
The proof goes through coprimality: if `p ∤ a` then `gcd(p, a) = 1`.
-/

namespace EuclidLemma

/-- A prime not dividing `a` is coprime to it. -/
lemma coprime_of_not_dvd {p a : ℕ} (hp : p.Prime) (h : ¬ p ∣ a) : Nat.Coprime p a :=
  (Nat.Prime.coprime_iff_not_dvd hp).mpr h

/-- **Euclid's lemma.** -/
theorem euclid {p a b : ℕ} (hp : p.Prime) (h : p ∣ a * b) : p ∣ a ∨ p ∣ b := by
  sorry

end EuclidLemma
