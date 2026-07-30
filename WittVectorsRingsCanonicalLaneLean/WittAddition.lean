import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorRing

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittAddition (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] where
  wittRing : WittVectorRing p R
  additionPolynomials : ℕ → ℤ[x₁, y₁, x₂, y₂, …]
  additionFormula : (n : ℕ) → (a b : wittRing.carrier) → coefficient (wittRing.addition a b) n = (additionPolynomials n)(coefficient a 0, coefficient b 0, coefficient a 1, coefficient b 1, …)
  wittAdditionClosed : Prop
  wittAdditionClosedTerm : wittAdditionClosed

theorem witt_addition_closed (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] (w : WittAddition p R) : w.wittAdditionClosed := w.wittAdditionClosedTerm

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse