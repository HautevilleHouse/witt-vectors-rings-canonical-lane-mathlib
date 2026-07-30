import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorObjects

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVectorConstruction (p : ℕ) (hp : Nat.Prime p) where
  carrier : Type u
  ring : Ring carrier
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  additionClosed : Prop
  multiplicationClosed : Prop
  additionAxioms : additionClosed
  multiplicationAxioms : multiplicationClosed

structure WittVectorConstructionEvidence {p : ℕ} {hp : Nat.Prime p} (C : WittVectorConstruction p hp) where
  additionAxiomsClosed : C.additionClosed
  multiplicationAxiomsClosed : C.multiplicationClosed

def WittVectorConstructionClosed {p : ℕ} {hp : Nat.Prime p} (C : WittVectorConstruction p hp) : Prop :=
  C.additionClosed ∧ C.multiplicationClosed

theorem witt_vector_construction_closed_from_evidence {p : ℕ} {hp : Nat.Prime p} (C : WittVectorConstruction p hp) (E : WittVectorConstructionEvidence C) : WittVectorConstructionClosed C := by
  exact And.intro E.additionAxiomsClosed E.multiplicationAxiomsClosed

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse