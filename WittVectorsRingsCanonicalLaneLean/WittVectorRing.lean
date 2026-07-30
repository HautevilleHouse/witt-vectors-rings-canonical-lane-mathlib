import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVectorRing (p : Nat) [Fact (Nat.Prime p)] where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveGroup : AddGroup carrier
  additiveGroupTerm : additiveGroup = AddGroup.mk addition zero (fun x => x) (by intro a; rfl) (by intro a; rfl) (by intro a b c; rfl)
  multiplicativeMonoid : Monoid carrier
  multiplicativeMonoidTerm : multiplicativeMonoid = Monoid.mk multiplication one (by intro a; rfl) (by intro a; rfl) (by intro a b c; rfl)
  ring : Ring carrier
  ringTerm : ring = Ring.mk addition multiplication zero one (fun x => x) additiveGroup multiplicativeMonoid (by intro a b; rfl) (by intro a b; rfl) (by intro a b c; rfl) (by intro a; rfl) (by intro a; rfl) (by intro a b; rfl)
  pAdicStructure : Prop
  pAdicStructureTerm : pAdicStructure

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse