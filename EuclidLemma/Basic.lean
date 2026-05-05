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
  by_cases ha : p ∣ a
  · exact Or.inl ha
  · exact Or.inr ((coprime_of_not_dvd hp ha).dvd_of_dvd_mul_left h)

/-- A prime dividing `a ^ n` divides `a`. -/
theorem dvd_of_dvd_pow {p a n : ℕ} (hp : p.Prime) (h : p ∣ a ^ n) : p ∣ a := by
  induction n with
  | zero => exact absurd (Nat.dvd_one.mp (by simpa using h)) hp.one_lt.ne'
  | succ k ih =>
    rw [pow_succ] at h
    exact (euclid hp h).elim ih id

/-- A prime dividing a product of a list divides some entry. -/
theorem exists_dvd_of_dvd_prod {p : ℕ} (hp : p.Prime) :
    ∀ {l : List ℕ}, p ∣ l.prod → ∃ a ∈ l, p ∣ a := by
  sorry

end EuclidLemma
