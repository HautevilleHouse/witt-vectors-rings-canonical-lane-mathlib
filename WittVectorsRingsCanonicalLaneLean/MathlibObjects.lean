import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittSpace where
  carrier : Type
  ring : Ring carrier

structure WittAdmittedObject where
  space : WittSpace
  isWittVectorRing : Prop
  hasTeichmueller : Prop
  teichmuellerMap : Type
  teichmuellerLift : Prop
  conclusion : teichmuellerLift

structure WittEndgameState where
  object : WittAdmittedObject

def WittWitnessClosed (O : WittAdmittedObject) : Prop :=
  O.teichmuellerLift

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse