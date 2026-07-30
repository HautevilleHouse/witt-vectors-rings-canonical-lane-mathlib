import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittRingVectorConstruction

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure ExtensionPropertiesPackage (G : GhostComponentSystem) (W : WittVectorConstruction G) where
  universalProperty : Prop
  teichmullerRepresentative : Prop
  frobeniusLinearization : Prop
  ringHomToWittVectors : Prop

structure ExtensionEvidence (G : GhostComponentSystem) (W : WittVectorConstruction G) (E : ExtensionPropertiesPackage G W) where
  universalPropertyClosed : E.universalProperty
  teichmullerClosed : E.teichmullerRepresentative
  frobeniusLinClosed : E.frobeniusLinearization
  ringHomClosed : E.ringHomToWittVectors

def ExtensionClosed (G : GhostComponentSystem) (W : WittVectorConstruction G) (E : ExtensionPropertiesPackage G W) : Prop :=
  E.universalProperty ∧ E.teichmullerRepresentative ∧ E.frobeniusLinearization ∧ E.ringHomToWittVectors

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse