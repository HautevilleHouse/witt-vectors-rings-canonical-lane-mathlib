import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure GhostComponentSystem where
  prime : ℕ
  ghostWittPolynomials : ℕ → Polynomial (ℤ)
  teichmullerLift : Prop
  ghostMap : Prop
  componentRingDefinition : Prop

def GhostComponentClosed (G : GhostComponentSystem) : Prop :=
  G.teichmullerLift ∧ G.ghostMap ∧ G.componentRingDefinition

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse