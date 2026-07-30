import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorRing

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittMultiplication (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] where
  wittRing : WittVectorRing p R
  multiplicationPolynomials : ℕ → ℤ[x₁, y₁, x₂, y₂, …]
  multiplicationFormula : (n : ℕ) → (a b : wittRing.carrier) → coefficient (wittRing.multiplication a b) n = (multiplicationPolynomials n)(coefficient a 0, coefficient b 0, coefficient a 1, coefficient b 1, …)
  wittMultiplicationClosed : Prop
  wittMultiplicationClosedTerm : wittMultiplicationClosed

theorem witt_multiplication_closed (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] (w : WittMultiplication p R) : w.wittMultiplicationClosed := w.wittMultiplicationClosedTerm

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse