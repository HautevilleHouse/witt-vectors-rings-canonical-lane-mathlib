import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.GhostComponentStructure

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVectorConstruction (G : GhostComponentSystem) where
  ring : Type u
  additionDefined : Prop
  multiplicationDefined : Prop
  frobeniusEndomorphism : Prop
  verschibungOperator : Prop

structure WittVectorEvidence (G : GhostComponentSystem) (W : WittVectorConstruction G) where
  additionClosed : W.additionDefined
  multiplicationClosed : W.multiplicationDefined
  frobeniusClosed : W.frobeniusEndomorphism
  verschibungClosed : W.verschibungOperator

def WittVectorClosed (G : GhostComponentSystem) (W : WittVectorConstruction G) : Prop :=
  W.additionDefined ∧ W.multiplicationDefined ∧ W.frobeniusEndomorphism ∧ W.verschibungOperator

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse