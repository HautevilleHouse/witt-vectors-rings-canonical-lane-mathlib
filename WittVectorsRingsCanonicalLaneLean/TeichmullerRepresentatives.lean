import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorObjects

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure TeichmullerRepresentation (p : ℕ) (hp : Nat.Prime p) where
  field : Type u
  fieldFrobenius : field → field
  teichmullerMap : ℤ → field
  multiplicativeLift : Prop
  multiplicativeLiftClosed : multiplicativeLift

structure TeichmullerEvidence {p : ℕ} {hp : Nat.Prime p} (T : TeichmullerRepresentation p hp) where
  multiplicativeLiftClosed : T.multiplicativeLift

def TeichmullerRepresentationClosed {p : ℕ} {hp : Nat.Prime p} (T : TeichmullerRepresentation p hp) : Prop :=
  T.multiplicativeLift

theorem teichmuller_representation_closed_from_evidence {p : ℕ} {hp : Nat.Prime p} (T : TeichmullerRepresentation p hp) (E : TeichmullerEvidence T) : TeichmullerRepresentationClosed T := by
  exact E.multiplicativeLiftClosed

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse