import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure AdmissibleClass where
  object : WittAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WittWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse