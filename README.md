# Euclid's Lemma

A prime dividing a product divides a factor; extended to powers and list products.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. If `p ∤ a` then `p` and `a` are coprime, since `p` has no other divisors.
2. Coprime to `a` and dividing `a * b` means `p ∣ b`.
3. Induction on `n` lifts this to `p ∣ aⁿ → p ∣ a`.
4. Induction on the list lifts it to finite products.

## Contents

- [`EuclidLemma/Basic.lean`](EuclidLemma/Basic.lean): the main development
- [`EuclidLemma/Examples.lean`](EuclidLemma/Examples.lean): small worked examples

Declarations:

- `EuclidLemma.coprime_of_not_dvd`
- `EuclidLemma.euclid`
- `EuclidLemma.dvd_of_dvd_pow`
- `EuclidLemma.exists_dvd_of_dvd_prod`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
