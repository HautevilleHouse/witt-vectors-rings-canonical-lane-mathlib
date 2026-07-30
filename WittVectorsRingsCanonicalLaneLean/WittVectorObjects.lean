import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVectorRing where
  p : ℕ
  pPrime : Nat.Prime p
  carrier : Type u
  ringStructure : Ring carrier
  wittAddition : carrier → carrier → carrier
  wittMultiplication : carrier → carrier → carrier
  wittAdditionProps : Prop
  wittMultiplicationProps : Prop
  wittAdditionClosed : wittAdditionProps
  wittMultiplicationClosed : wittMultiplicationProps

structure WittVectorAdmittedObject where
  wittRing : WittVectorRing
  pAdicIntegerRing : Type u
  pAdicIntegerRingProps : Prop
  ringIsomorphism : WittVectorRing.Isomorphism wittRing pAdicIntegerRing
  conclusion : ringIsomorphism

def WittVectorWitnessClosed (O : WittVectorAdmittedObject) : Prop :=
  O.ringIsomorphism

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse