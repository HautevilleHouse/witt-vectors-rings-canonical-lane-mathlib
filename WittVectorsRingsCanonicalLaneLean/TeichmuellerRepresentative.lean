import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure TeichmuellerRepresentative (p : ℕ) [Fact (Nat.Prime p)] where
  fieldCharacteristic : Prop
  multiplicativeLift : Prop
  frobeniusAction : Prop
  explicitConstruction : Prop

structure TeichmuellerRepresentativeEvidence (p : ℕ) [Fact (Nat.Prime p)] (T : TeichmuellerRepresentative p) where
  fieldCharacteristicClosed : T.fieldCharacteristic
  multiplicativeLiftClosed : T.multiplicativeLift
  frobeniusActionClosed : T.frobeniusAction
  explicitConstructionClosed : T.explicitConstruction

def TeichmuellerRepresentativeClosed (p : ℕ) [Fact (Nat.Prime p)] (T : TeichmuellerRepresentative p) : Prop :=
  T.fieldCharacteristic ∧ T.multiplicativeLift ∧ T.frobeniusAction ∧ T.explicitConstruction

theorem teichmueller_representative_closed_from_evidence (p : ℕ) [Fact (Nat.Prime p)] (T : TeichmuellerRepresentative p)
    (E : TeichmuellerRepresentativeEvidence p T) : TeichmuellerRepresentativeClosed p T := by
  exact And.intro E.fieldCharacteristicClosed (And.intro E.multiplicativeLiftClosed (And.intro E.frobeniusActionClosed E.explicitConstructionClosed))

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse