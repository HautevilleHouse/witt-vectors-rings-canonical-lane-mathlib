import canonicalLaneMathlib.WittVectorStructure

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVectorRing where
  baseRing : Type u
  [inst : CommRing baseRing]
  ring : CommRing (𝕎 baseRing)
  ghostMap : 𝕎 baseRing → (ℕ → baseRing)
  ghostMapIsRingHom : RingHom (𝕎 baseRing) (ℕ → baseRing)
  teichmueller : baseRing → 𝕎 baseRing
  teichmuellerMul : ∀ a b : baseRing, teichmueller (a * b) = teichmueller a * teichmueller b
  teichmuellerAdd : ∀ a b : baseRing, teichmueller (a + b) = teichmueller a + teichmueller b

structure WittVectorEvidence (W : WittVectorRing) where
  baseRingIsComm : IsCommRing W.baseRing
  ghostMapIsRingHomClosed : W.ghostMapIsRingHom
  teichmuellerMulClosed : W.teichmuellerMul
  teichmuellerAddClosed : W.teichmuellerAdd

def WittVectorRingClosed (W : WittVectorRing) : Prop :=
  IsCommRing W.baseRing ∧
  W.ghostMapIsRingHom ∧
  W.teichmuellerMul ∧
  W.teichmuellerAdd

theorem witt_vector_ring_closed_from_evidence (W : WittVectorRing) (E : WittVectorEvidence W) :
    WittVectorRingClosed W := by
  exact And.intro E.baseRingIsComm
    (And.intro E.ghostMapIsRingHomClosed
      (And.intro E.teichmuellerMulClosed E.teichmuellerAddClosed))

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse