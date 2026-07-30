import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure FrobeniusVerschiebungMaps (p : ℕ) [Fact (Nat.Prime p)] where
  frobeniusEndomorphism : Prop
  verschiebungOperator : Prop
  compositionRelations : Prop
  derivationProperties : Prop

structure FrobeniusVerschiebungMapsEvidence (p : ℕ) [Fact (Nat.Prime p)] (F : FrobeniusVerschiebungMaps p) where
  frobeniusEndomorphismClosed : F.frobeniusEndomorphism
  verschiebungOperatorClosed : F.verschiebungOperator
  compositionRelationsClosed : F.compositionRelations
  derivationPropertiesClosed : F.derivationProperties

def FrobeniusVerschiebungMapsClosed (p : ℕ) [Fact (Nat.Prime p)] (F : FrobeniusVerschiebungMaps p) : Prop :=
  F.frobeniusEndomorphism ∧ F.verschiebungOperator ∧ F.compositionRelations ∧ F.derivationProperties

theorem frobenius_verschiebung_maps_closed_from_evidence (p : ℕ) [Fact (Nat.Prime p)] (F : FrobeniusVerschiebungMaps p)
    (E : FrobeniusVerschiebungMapsEvidence p F) : FrobeniusVerschiebungMapsClosed p F := by
  exact And.intro E.frobeniusEndomorphismClosed (And.intro E.verschiebungOperatorClosed (And.intro E.compositionRelationsClosed E.derivationPropertiesClosed))

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse